<?php
$tinggi = 8;

for ($i = 0; $i <= $tinggi; $i++) {
    $angka = 0;
    for ($j = 0; $j <= $i; $j++) {
        echo $angka . " ";
        $angka++;
    }
    echo "<br>";
}
