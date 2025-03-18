<?php
$pdo = new PDO("mysql:host=localhost;dbname=your_database", "username", "password");

$query = "SELECT 
            code,
            CASE 
                WHEN TIME(timestamp) < '15:00:00' THEN timestamp
                ELSE NULL
            END AS `Timestamp-start`,
            CASE 
                WHEN TIME(timestamp) >= '15:00:00' THEN timestamp
                ELSE NULL
            END AS `Timestamp-end`,
            device
          FROM attendances
          WHERE code = '131401'
          ORDER BY timestamp";

$stmt = $pdo->prepare($query);
$stmt->execute();
$records = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Attendance Table</title>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
</head>
<body>

<h2>Attendance Data for Code 131401</h2>

<table id="attendanceTable" class="display">
    <thead>
        <tr>
            <th>Code</th>
            <th>Timestamp-start</th>
            <th>Timestamp-end</th>
            <th>Device</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($records as $row): ?>
            <tr>
                <td><?= $row['code'] ?></td>
                <td><?= $row['Timestamp-start'] ?: 'NULL' ?></td>
                <td><?= $row['Timestamp-end'] ?: 'NULL' ?></td>
                <td><?= $row['device'] ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>

<script>
    $(document).ready(function() {
        $('#attendanceTable').DataTable();
    });
</script>

</body>
</html>
