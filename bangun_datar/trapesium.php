<?php
$sisi_a = 8;
$sisi_b = 12;
$tinggi = 5;
$sisi_miring = sqrt(pow(($sisi_b - $sisi_a) / 2, 2) + pow($tinggi, 2));
$luas = (($sisi_a + $sisi_b) / 2) * $tinggi;

echo "Luas trapesium dengan sisi atas $sisi_a, sisi bawah $sisi_b, dan tinggi $tinggi adalah $luas satuan luas.";
