<?php
namespace App\Model;

use App\Lib\Database;
use App\Lib\Response;

class RequestModel
{
  private $db;
  private $table = 'request_hist';
  private $response;
    
  public function __CONSTRUCT(){
    $this->db = Database::StartUp();
    $this->response = new Response();
  }
    
  public function Insert($iso_3166, $request_ip){
		try{
      $sql = "INSERT INTO $this->table (iso_3166, request_ip) VALUES (?,?)";
                
      $this->db->prepare($sql)
               ->execute(
                  array(
                    $iso_3166, 
                    $request_ip
                  )
                ); 
            
			$this->response->setResponse(true);
      return $this->response;

		}catch (Exception $e){
      $this->response->setResponse(false, $e->getMessage());
		}
  }

  public function GetHistoryIntervalByHour($hours)
    {
        try
        {
            $result = array();

            $stm = $this->db->prepare("SELECT c.name, c.distance_to_bsas, COUNT(rh.id_request) AS quantity 
                                      FROM request_hist rh 
                                      LEFT JOIN countries c 
                                      ON rh.iso_3166 = c.iso_3166"
                                      .($hours > 0 ? " WHERE (rh.date_time >= DATE_SUB(now(),INTERVAL $hours HOUR)) " : " ").
                                      "GROUP BY rh.iso_3166 ORDER BY c.distance_to_bsas");
            $stm->execute();

            $this->response->setResponse(true);
            $this->response->result = $stm->fetchAll();

            return $this->response;
        }
        catch(Exception $e)
        {
            $this->response->setResponse(false, $e->getMessage());
            return $this->response;
        }
    }
}