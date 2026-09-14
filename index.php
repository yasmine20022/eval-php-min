<?php
header("Content-Type: application/json");

$path = parse_url($_SERVER["REQUEST_URI"], PHP_URL_PATH);

if ($path === "/health") {
    echo json_encode(["status" => "ok"]);
} else {
    echo json_encode(["service" => "eval-php-min"]);
}
