<?php
$first = [];
$second = [];
$third = [];

$sql_field = "	SELECT
A.SciField as first, B.SciField as second, COUNT(A.SciField) as third
FROM
about A,
about B
WHERE
A.ProjectID = B.ProjectID
AND A.SciField > B.SciField
GROUP BY A.SciField , B.SciField
ORDER BY COUNT(A.SciField) DESC , A.SciField , B.SciField
limit 3;
			";


	$field = $conn->query($sql_field);


if ($field->num_rows > 0) {
  while ($row = $field->fetch_assoc()) {
    $field_data[] = $row;
  }
}


?>
