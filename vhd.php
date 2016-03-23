
<?php include('./header.php'); ?>

  
	


    <div id="VHDTableContainer" style="width: 600px;"></div>
	<script type="text/javascript">


		$(document).ready(function () {

		    //Prepare jTable
			$('#VHDTableContainer').jtable({
				
				paging: true,
				pageSize: 10,
				sorting: true,
				defaultSorting: 'vblade ASC',
				actions: {
					listAction:   'tables.php?action=vhlist',
					createAction: 'tables.php?action=vhcreate',
					updateAction: 'tables.php?action=vhupdate',
					deleteAction: 'tables.php?action=vhdelete'
				},
				fields: {
					vblade: {
						title: 'vblade',
						key: true,
						width: '10%',
						edit: true
						
						

					},
					ip: {
						title: 'IP',
						width: '30%'
						
					},
					os: {
						title: 'OS',
						width: '10%',
					    type: 'radiobutton',
                        options: { '1': '32-bit', '2': '64-bit' }
					},
					image: {
						title: 'image',
						width: '40%'
					},
				
					kpxefile: {
						title: 'KPXEfile',
						width: '40%'
					},
					changes: {
						title: 'Comments',
					    width: '100%',
						type: 'textarea'
					}
				
				
			
				},
		
			});
			    
	

			// Load person list from server
			$('#VHDTableContainer').jtable('load');
			
			

		
		});
	

	</script>
  </body>
</html>
