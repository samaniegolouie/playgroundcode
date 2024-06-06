<?php

// Database configuration
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "05022024_db_rates4";

// Create a connection to MySQL database
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Set headers to allow cross-origin requests
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// Handle HTTP GET request to fetch joined data from tbl_locations and tbl_service_mode
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $sql_locations = "SELECT 
                        l.id AS location_id, l.city, l.province, l.island, l.IATA
                    FROM 
                        tbl_locations l";
    $result_locations = $conn->query($sql_locations);

    $locations = array();
    if ($result_locations->num_rows > 0) {
        while ($row = $result_locations->fetch_assoc()) {
            $location = array(
                'id' => $row['location_id'],
                'city' => $row['city'],
                'province' => $row['province'],
                'island' => $row['island'],
                'IATA' => $row['IATA']
            );
            $locations[] = array('tbl_locations' => $location);
        }
    }

    // Fetch tbl_service_mode records
    $sql_service_mode = "SELECT 
                            id AS service_mode_id, name
                        FROM 
                            tbl_service_mode";
    $result_service_mode = $conn->query($sql_service_mode);

    $service_modes = array();
    if ($result_service_mode->num_rows > 0) {
        while ($row = $result_service_mode->fetch_assoc()) {
            $service_mode = array(
                'id' => $row['service_mode_id'],
                'name' => $row['name']
            );
            $service_modes[] = array('tbl_service_mode' => $service_mode);
        }
    }

    // Combine results into a single array
    $combined_result = array('tbl_locations' => $locations) + array('tbl_service_mode' => $service_modes);

    echo json_encode($combined_result);
}

// Close the database connection
$conn->close();
?>
