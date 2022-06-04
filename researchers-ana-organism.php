<?php
$firstmew = "";
$secondnew = "";
$thirdnew = "";
$fourthnew = "";




if(empty($_GET['organization'])){
	$fourthnew = $_GET['organization'];

	/* COVID VISIT */
	$sql_res = "	SELECT ResearchID as firstnew, FirstName as secondnew, LastName as thirdnew
        			FROM researcher 
			WHERE NameOrg = $fourthnew;
			";

	$res = $conn->query($sql_res);

	/* COVID DATA TO ARRAY */
	if ($res->num_rows > 0) {
		while ($row = $res->fetch_assoc()) {
			$res_data[] = $row;
		}
	}




}


?>