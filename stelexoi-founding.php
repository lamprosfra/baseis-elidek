<?php
$newafirst = [];
$newasecond = [];
$newathird = [];

$sql_field = "	SELECT
  distinct m.Name as newafirst, o.NameOrg as newasecond, c.Stocks as newathird
from manager m
INNER JOIN Project j
ON j.ManagerID = m.ManagerID
INNER JOIN organization o 
ON j.NameOrg = o.NameOrg
INNER JOIN company c 
ON c.NameOrg = o.NameOrg
order by c.Stocks Desc
limit 5;
			";


	$field2 = $conn->query($sql_field);


if ($field2->num_rows > 0) {
  while ($row = $field2->fetch_assoc()) {
    $field_data2[] = $row;
  }
}


?>
