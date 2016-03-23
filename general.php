
<?php include('./header.php'); ?>
<html>
<body>
<head>

</head>


 <select name="c" id="c" >
	<option class="a" value=""> Search Field...</option>
	<option value="classroom">Classroom</option>
	<option value="cpu">CPU</option>
	<option value="faceplate">Faceplate</option>
	<option value="ip_address">IP_address</option>
	<option value="gpu">gpu</option>
	<option value="location">Location</option>
	<option value="locks">Locks</option>
	<option value="mac">mac</option>
	<option value="model">Model</option>
	<option value="pc_num">pc num</option>
	<option value="port">Port</option>
	<option value="pxe_file">PXEfile</option>
	<option value="ram">RAM</option>
	<option value="swit">Switch</option>
	<option value="table_row">Table row</option>
	<option value="tftp">tftp</option>
	<option value="upgraded_ram">Upgraded RAM</option>
 </select>

<input type="text" name="pa" id="pa" />
        <button type="submit" id="LoadRecordsButton">Load</button>

		
		
<div id="GeneralTableContainer" style="width: 600px;"></div>
<script type="text/javascript">
		$(document).ready(function () {
		
 		  //$("#c").selectBoxIt();
           
		    //Prepare jTable
			$('#GeneralTableContainer').jtable({
			
				paging: true,
				pageSize: 20,
				sorting: true,
				defaultSorting: 'table_row ASC',
			
				
				actions: {
					listAction:   'tables.php?action=gtlist'
				},
				fields: {
					table_row: {
					    title: 'row#',
						key: true
					},
					pc_num:     {
						title: 'pc#',
						width: '40%'
					},
					ip_address: {
						title: 'IP',
						width: '40%',
						visibility: 'fixed'
					},
					mac: {
						title: 'MAC',
						width: '20%',
						visibility: 'fixed'
					},
					model: {
						title: 'model',
						width: '30%'
					},
					cpu: {
						title: 'cpu',
						width: '30%'
					},
					ram: {
						title: 'RAM',
						width: '30%',
						visibility: 'hidden'
					},
					upgraded_ram: {
						title: 'Upgraded RAM',
						width: '20%'
						
					},
					faceplate: {
						title: 'faceplate',
						width: '20%',
						visibility: 'hidden'
					},
					swit: {
						title: 'switch',
						width: '20%',
						visibility: 'hidden'
					},
					gpu: {
						title: 'gpu',
						width: '20%',
						visibility: 'hidden'
					},
					port: {
						title: 'port',
						width: '20%'
					},
					tftp: {
						title: 'tftp',
						width: '20%'
					},
					pxe_file: {
						title: 'PXEfile',
						width: '20%'
					},
					locks: {
						title: 'locks',
						width: '20%',
						visibility: 'hidden'
					},
					classroom: {
					    title: 'classroom',
						width: '30%'
				    },
					location: {
						title: 'location',
						width: '20%',
						visibility: 'hidden'
					}
				
			
				}
			});
			    
			// Load person list from server
			//$('#GeneralTableContainer').jtable('load');


  
          
			
			  $('#LoadRecordsButton').click(function (e) {
               e.preventDefault();
                $('#GeneralTableContainer').jtable('load', {
                  mac: $('#pa').val(),
				  combo : $('#c').val()
               
            });
        });
 
        //Load all records when page is first shown
        $('#LoadRecordsButton').click();

    });
			

	</script>
  </body>
</html>
