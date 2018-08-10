
    <div class="container">

      <div class="row">

        <div class="col-lg-3">

          <h1 class="my-4"><?php echo $sitename ?></h1>
          <div class="list-group">
		  
		  
			<?php
			$sql = "SELECT * FROM `categories`;";
			$result = $conn->query($sql);

			if ($result->num_rows > 0) {
				// output data of each row
				while($row = $result->fetch_assoc()) {
				
				
					echo  " <a href='#' class='list-group-item'>".$row['cat_title']."</a>";
				}
        $result="";
        $num_rows="";
        $sql="";
			}
			?>
          </div>

        </div>