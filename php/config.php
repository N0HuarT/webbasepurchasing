<?php

$sitename = "eloisaaaaa";
define( 'APP_ROOT', '/ecom/');
#define('SITE_ROOT', dirname('ecom').'/');
defined("DS") ? null : define("DS", DIRECTORY_SEPARATOR);
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ecom_db";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "<!--Connected successfully-->";

?>