<?php

use App\Model\RequestModel;

$app->group('/ip/', function () {
  $this->get('get-info/{ip}', function ($req, $res, $args) {

    $ip = $args['ip'];

    if (!filter_var($ip, FILTER_VALIDATE_IP)) {
      return $res
      ->withStatus(400)
      ->withHeader('Content-type', 'application/json');
    }

    $arrInfo = [];

    $arrInfo["IP"] = $ip;
    $arrInfo["fecha actual"] = date('d-m-Y H:i:s');

    $data = json_decode(file_get_contents('https://api.ip2country.info/ip?'.$ip), true );

    $countryCode3 = $data["countryCode3"];

    $data = json_decode(file_get_contents('https://restcountries.eu/rest/v2/alpha/'.$countryCode3), true );
      
    $arrInfo["Pais"] = ($data["nativeName"])." (".$data["name"].")";

    $arrInfo["ISO Code"] = [];

    foreach ($data["languages"] as $val) {
       array_push($arrInfo["ISO Code"], $val["iso639_1"]);
    }

    $arrInfo["idiomas"] = [];

    foreach ($data["languages"] as $val) {
      array_push($arrInfo["idiomas"], $val["name"]);
    }

    $arrInfo["Moneda"] = [];

    $currencyRates = json_decode(file_get_contents('https://api.exchangeratesapi.io/latest?base=USD'), true);

    foreach ($data["currencies"] as $val) {
      if (array_key_exists($val['code'], $currencyRates['rates'])) {
        array_push($arrInfo["Moneda"],'1 '.$val['code'].' = '.number_format((1/$currencyRates['rates'][$val['code']]), 2, '.', '').' U$S');
      }
    }

    $arrInfo["Hora"] = $data['timezones'];

    $rqm = new RequestModel();

    $rqm -> Insert($countryCode3, $arrInfo["IP"]);

    $reqHistInterval = $rqm->GetHistoryIntervalByHour(24)->result;

    if(!empty($reqHistInterval)){
      
      if(count($reqHistInterval)>1){
        $arrInfo["Lugar mas cercano"] = $reqHistInterval[0]->name;
        $arrInfo["Lugar mas lejano"] = $reqHistInterval[count($reqHistInterval)-1]->name;
      }else{
        $arrInfo["Unico lugar"] = $reqHistInterval[0]->name;
      }

      $acumKm = 0;
      $totalReq = 0;
      foreach ($reqHistInterval as $val) {
        $acumKm += $val->quantity * $val->distance_to_bsas;
        $totalReq += $val ->quantity; 
      }
      $arrInfo["Promedio de distancia recorrida"] = number_format($acumKm/$totalReq, 2, '.', '') ." Km/s";
    }

    //$reqIP = $req->getAttribute('ip_address');

    return $res
      ->withHeader('Content-type', 'application/json')
      ->getBody()
      ->write(
        json_encode($arrInfo)
    );
  });
});