<?php
$organizaion_result = "";


/* SQL QUERY (Dropdown Select) */
$sql_dropdown_select = "SELECT Title as organization_result FROM organization; ";
$dropdown_select = $conn->query($sql_dropdown_select);

/* Researcher DATA TO ARRAY */
if ($dropdown_select->num_rows > 0) {
	while ($row = $dropdown_select->fetch_assoc()) {
		$organi_data[] = $row;
	}
}


