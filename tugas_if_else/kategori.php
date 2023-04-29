<?php
$nama = "syahrul";
$berat_badan = 55;
$tinggi_badan = 165;

// menghitung nilai BMI
$bmi = $berat_badan / pow($tinggi_badan / 100, 2);

// menentukan kategori BMI
if ($bmi < 18.5) {
    $kategori = "Berat badan kurang";
} else if ($bmi >= 18.5 && $bmi <= 24.9) {
    $kategori = "Berat badan normal";
} else if ($bmi >= 25 && $bmi <= 29.9) {
    $kategori = "Kelebihan berat badan";
} else if ($bmi >= 30 && $bmi <= 39.9) {
    $kategori = "Obesitas";
} else {
    $kategori = "Obesitas Morbid";
}

// menampilkan hasil perhitungan
echo "Halo $nama, Nilai BMI anda adalah " . round($bmi, 2) . ", Anda termasuk " . $kategori;
