
<?php include('./header.php'); ?>
  

  
  
	<div id="PeopleTableContainer" style="width: 600px;"></div>
	<script type="text/javascript">

	
		$(document).ready(function () {

		    //Prepare jTable
			$('#PeopleTableContainer').jtable({
				
				paging: true,
				pageSize: 10,
				sorting: true,
				defaultSorting: 'vblade ASC',
				actions: {
					listAction:   'tables.php?action=vblist',
					updateAction: 'tables.php?action=vbupdate'
				},
				fields: {
					vblade: {
					    title: 'Vblade',
						key: true,
						edit: false,
						
					},
					block: {
						title: 'Block',
						width: '40%'
					},
					interf: {
						title: 'Interface',
						width: '40%'
					},
					ip: {
						title: 'IP',
						width: '20%'
					},
					os: {
						title: 'OS',
						width: '30%',
						type: 'radiobutton',
                        options: { '1': '32-bit', '2': '64-bit' }
					},
					image: {
						title: 'image',
						width: '30%',
					},
					kpxe_file: {
						title: 'kpxe file',
						width: '30%',
					},
					comments: {
						title: 'Comments',
						width: '100%',
						type: 'textarea',
					}
				
			
				}
		
				
				
			});
			    
	

			// Load person list from server
			$('#PeopleTableContainer').jtable('load');
			
			
		
		});
	

	</script>
  </body>
</html>
