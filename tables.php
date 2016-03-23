<?php

try
{
	# //Open database connection
     include('db/connect.php'); 

	# //Getting records (listAction)

	
	
	
	 $ACTION = $_GET["action"];
	
#####################################################  VBLADE TABLE ###########################################################	
	 if($ACTION == "vblist")
	{
		// Get record count
		$result = mysql_query("SELECT COUNT(*) AS RecordCount FROM vblade;");
		$row = mysql_fetch_array($result);
		$recordCount = $row['RecordCount'];
          
		# Get records from database
		$query = "SELECT * FROM vblade ORDER BY " . $_GET["jtSorting"] . " LIMIT " . $_GET["jtStartIndex"] . "," . $_GET["jtPageSize"] . ";";
		
		$result = mysql_query($query);

		# Add all records to an array
		$rows = array();
		while($row = mysql_fetch_array($result))
		{
		    $rows[] = $row;
		}

		# Return result to jTable
		$jTableResult = array();
		$jTableResult['Result'] = "OK";
		$jTableResult['TotalRecordCount'] = $recordCount;
		$jTableResult['Records'] = $rows;
		print json_encode($jTableResult);
	}

	 //Updating a record (updateAction)
	 else if($ACTION == "vbupdate")
	 {
	 
	   $VBBLOCK      = $_POST["block"];
 	   $VBINTERFACE  = $_POST["interf"];
	   $VBIP         = $_POST["ip"];
	   $VBIP         = ip2long($VBIP);
	   $VBOS         = $_POST["os"];
	   $VBIMAGE      = $_POST["image"];
	   $VBKPXE       = $_POST["kpxe_file"];
	   $VBCOMMENT    = $_POST["comments"];
	   $VBBLADE      = $_POST["vblade"];
	  
		 //Record the changes in "history_query" table
		 $history_query = mysql_query("INSERT INTO vblade_history( block, interf, ip, os, image, vblade, kpxe_file, comments, `date`)
                         		VALUES 
								(
								'". $VBBLOCK . "', '" . $VBINTERFACE . "', '".$VBIP . "',
								'" . $VBOS . "', '" . $VBIMAGE . "',  '" . $VBBLADE . "',
								'" . $VBKPXE . "', '" . $VBCOMMENT . "', NOW()
								 )");
		   
		   
		 //Update record in database
		$query = "UPDATE vblade SET block = '". $VBBLOCK . 
		                                     "',interf = '" . $VBINTERFACE . 
											 "', ip = '" . $VBIP . 
											 "', os = '" . $VBOS .
											 "',image = '" . $VBIMAGE . 
											 "', kpxe_file = '" . $VBKPXE .
							                 "', comments = '" . $VBCOMMENT . 
											 "' WHERE vblade = '" . $VBBLADE . "';";
												
		$result = mysql_query($query);
												
		//Return result to jTable
 	    $jTableResult = array();
	 	$jTableResult['Result'] = "OK";
		print json_encode($jTableResult);
	}
	
############################################################## VHD TABLE ############################################################	
	
	else if($ACTION == "vhlist")
	{
		// Get record count
		$result = mysql_query("SELECT COUNT(*) AS RecordCount FROM vhd;");
		$row = mysql_fetch_array($result);
		$recordCount = $row['RecordCount'];
          
		# Get records from database
		$query = "SELECT * FROM vhd ORDER BY " . $_GET["jtSorting"] . " LIMIT " . $_GET["jtStartIndex"] . "," . $_GET["jtPageSize"] . ";";
		
		$result = mysql_query($query);

		# Add all records to an array
		$rows = array();
		while($row = mysql_fetch_array($result))
		{
		    $rows[] = $row;
		}

		# Return result to jTable
		$jTableResult = array();
		$jTableResult['Result'] = "OK";
		$jTableResult['TotalRecordCount'] = $recordCount;
		$jTableResult['Records'] = $rows;
		print json_encode($jTableResult);
	}
	
	# //Creating a new record (createAction)
	else if($ACTION == "vhcreate")
	{
        
		$VHIP      = $_POST["ip"];
		$VHOS      = $_POST["os"];
		$VHIMAGE   = $_POST["image"];
		$VHKPXE    = $_POST["kpxefile"];
		$VHCHANGE  = $_POST["changes"];
		$VHVBLADE  = $_POST["vblade"];
							
        $query = "INSERT INTO vhd(`date`, ip, os, image, vblade, kpxefile, changes)
                         		VALUES (NOW(),
								'". $VHIP . "', '" . $VHOS . "', '".$VHIMAGE . "',
								'" . $VHVBLADE . "', '" . $VHKPXE . "',  '" . $VHCHANGE . "')";
								
		//Insert record into database
		$result = mysql_query($query);
		
		//Get last inserted record (to return to jTable)
		$result = mysql_query("SELECT * FROM vhd WHERE vblade = LAST_INSERT_ID();");
		$row = mysql_fetch_array($result);

		//Return result to jTable
		$jTableResult = array();
		$jTableResult['Result'] = "OK";
		$jTableResult['Record'] = $row;
		print json_encode($jTableResult);
	 
	 }
	 //Updating a record (updateAction)
	 else if($ACTION == "vhupdate")
	 {
		//Update record in database
		
		$VHIP      = $_POST["ip"];
		$VHOS      = $_POST["os"];
		$VHIMAGE   = $_POST["image"];
		$VHKPXE    = $_POST["kpxefile"];
		$VHCHANGE  = $_POST["changes"];
		$VHVBLADE  = $_POST["vblade"];

		$query = "UPDATE vhd SET `date` = NOW(), ip = '" . $VHIP . "'," .
									"os = '" . $VHOS . "', " .
									"image = '" . $VHIMAGE . "',".
									"kpxefile = '" . $VHKPXE . "'," .
									"changes = '" . $VHCHANGE . "'" . 
									"WHERE vblade = '" . $VHVBLADE . "';";
											
		
		$result = mysql_query($query);
		
		//Return result to jTable
 	    $jTableResult = array();
	 	$jTableResult['Result'] = "OK";
		$jTableResult['QueryOK'] = $result;
		$jTableResult['Query'] = $query;
		print json_encode($jTableResult);
	}
	//Deleting a record (deleteAction)
	else if($ACTION == "vhdelete")
	 {
	    $VHVBLADE  = $_POST["vblade"];
	 	//Delete from database
		$result = mysql_query("DELETE FROM vhd WHERE vblade = '" . $VHVBLADE . "';");

		//Return result to jTable
	 	$jTableResult = array();
	 	$jTableResult['Result'] = "OK";
	 	print json_encode($jTableResult);
	 }
###############################################  GENERAL TABLE #####################################################
	 
	 
	 else if($_GET["action"] == "gtlist")
	{
	   
	   $MAC 	    =   $_POST['mac'];
	   $COMBOBOX    =   $_POST['combo'];
	
		 if ( !empty( $MAC ))
		 {
		 	// Get record count
		$result = mysql_query("SELECT COUNT(". $COMBOBOX . ") AS RecordCount FROM `general` WHERE mac LIKE'%" . $MAC . "%';");
		$row = mysql_fetch_array($result);
		$recordCount = $row['RecordCount'];
		 
		$query = mysql_query("SELECT * FROM `general` WHERE " . $COMBOBOX ." LIKE '%" . $MAC . "%' ORDER BY 
		                     " . $_GET["jtSorting"] . " LIMIT " . $_GET["jtStartIndex"] . "," . $_GET["jtPageSize"] . ";");
		  
		  
		  $rows = array();
		while($row = mysql_fetch_array($query))
		{
		    $rows[] = $row;
		}
			
        //Return result to jTable
        $jTableResult = array();
		$jTableResult['Result'] = "OK";
		$jTableResult['TotalRecordCount'] = $recordCount;
		$jTableResult['Records'] = $rows;
		print json_encode($jTableResult);

		 }    else 	  {    //if search button hasn't been clicked
		 
		 
		// Get record count
		$result = mysql_query("SELECT COUNT(*) AS RecordCount FROM general;");
		$row = mysql_fetch_array($result);
		$recordCount = $row['RecordCount'];
          
		# Get records from database
		$query = "SELECT * FROM general ORDER BY " . $_GET["jtSorting"] . " LIMIT " . $_GET["jtStartIndex"] . "," . $_GET["jtPageSize"] . ";";
		
		$result = mysql_query($query);

		# Add all records to an array
		$rows = array();
		while($row = mysql_fetch_array($result))
		{
		    $rows[] = $row;
		}

		# Return result to jTable
		$jTableResult = array();
		$jTableResult['Result'] = "OK";
		$jTableResult['TotalRecordCount'] = $recordCount;
		$jTableResult['Records'] = $rows;
		print json_encode($jTableResult);
		
		              }   
	    
	}
	
	
	//Close database connection
	mysql_close($con);
}

catch(Exception $ex)
{
    //Return error message
	$jTableResult = array();
	$jTableResult['Result'] = "ERROR";
	$jTableResult['Message'] = $ex->getMessage();
	print json_encode($jTableResult);
}
	
?>
