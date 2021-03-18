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
}