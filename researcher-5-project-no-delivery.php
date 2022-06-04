<?php
$newfirst = [];
$newsecond = [];
$newthird = [];

$sql_field = " SELECT
r.FirstName as newfirst, r.LastName as newsecond, count(*) as newthird
from researcher r
INNER JOIN works w
ON w.ResearchID = r.ResearchID
INNER JOIN Project j
ON j.ProjectID = w.ProjectID
where j.ProjectID not in 
(select ProjectID
from delivery)
group by r.FirstName , r.LastName
HAVING count(*) >= 5; ";




$field1 = $conn->query($sql_field);


if ($field1->num_rows > 0) {
  while ($row = $field1->fetch_assoc()) {
    $field_data1[] = $row;
  }
}


?>