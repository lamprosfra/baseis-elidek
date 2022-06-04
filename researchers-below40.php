<?php
$newbfirst = [];
$newbsecond = [];
$newbthird = [];

$sql_field = "SELECT
 b.FirstName  as newbfirst, b.LastName as newbsecond, max( c) as newbthird from(
select r.FirstName, r.LastName, count(*) as c /*, r.age, j.Startdate,j.EndDate*/
from researcher r 
INNER JOIN works w
ON w.ResearchID = r.ResearchID
INNER JOIN Project j
ON j.ProjectID = w.ProjectID
where (r.age<40) and (j.StartDate<current_date() and j.EndDate>current_date())
group by r.FirstName , r.LastName
order by count(*) desc
)  b;

			";


	$field3 = $conn->query($sql_field);


if ($field3->num_rows > 0) {
  while ($row = $field3->fetch_assoc()) {
    $field_data3[] = $row;
  }
}


?>

