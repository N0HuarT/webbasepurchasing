<?php
//Loop for Rating

		function star($starNumber){	
		$star = "";
		for($x=1;$x<=5;$x++) {
			
			
			if  ($x<=$starNumber)
			{
			$star .= "<span class=\"glyphicon glyphicon-star-empty\"></span>";
			}else{
				$star.="<span class=\"glyphicon glyphicon-star-empty\" ></span>";
			}
			
		}
		echo $star;
		}
?>