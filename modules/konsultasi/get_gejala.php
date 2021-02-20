<?php
session_start();
header('Content-Type: application/json');
include '../../inc/dbconfig.php';


$gejala = array();
foreach($conn->query("SELECT * FROM tbl_gejala") as $row) $gejala[] = $row;     

$penyakit = array();
foreach($conn->query("SELECT * FROM tbl_penyakit") as $row) $penyakit[] = $row;   

$kaidah = array();
foreach($conn->query("SELECT * FROM tbl_kaidah") as $row) $kaidah[] = $row;   

$output = array('gejala' => $gejala, 'penyakit' => $penyakit, 'kaidah' => $kaidah);
echo json_encode($output);