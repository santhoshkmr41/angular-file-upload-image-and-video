<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json');

$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "task1";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}


if (isset($_FILES['file'])) {
    $errors    = array();
    $file_name = rand(0, 3000) . "_" . $_FILES['file']['name'];
    $file_size = $_FILES['file']['size'];
    $file_tmp  = $_FILES['file']['tmp_name'];
    $file_type = $_FILES['file']['type'];
    
    if (move_uploaded_file($file_tmp, "uploads/" . $file_name)) {
        
        $fileUrl = "http://localhost/santhosh/uploads/" . $file_name;
        
        $sql = "INSERT INTO `tbl_files` (`id`, `name`, `type`, `url`) VALUES (NULL, '$file_name', '$file_type', '$fileUrl')";
        if (mysqli_query($conn, $sql)) {
            echo json_encode(array(
                "status" => 200,
                "message" => "New file created successfully"
            ));
        } else {
            echo json_encode(array(
                "status" => 400,
                "message" => mysqli_error($conn)
            ));
        }
        
        mysqli_close($conn);
        
        
    } else {
        echo json_encode(array(
            "status" => 400,
            "message" => mysqli_error($conn)
        ));
    }
    
}


if(isset($_REQUEST['getFiles']))
{
    
$sql = "SELECT * FROM `tbl_files` ORDER BY `id` DESC";
$result = mysqli_query($conn, $sql);
$resultOtuput=array();

if (mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_assoc($result)) {
        array_push($resultOtuput,$row);
    }

    echo json_encode($resultOtuput);
} else {
    echo json_encode($resultOtuput);
}

mysqli_close($conn);
}

?>