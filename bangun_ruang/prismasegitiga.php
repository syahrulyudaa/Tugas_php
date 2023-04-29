<?php
$alas = 8;
$tinggi_alas = 6;
$tinggi_prisma = 10;

$luas_alas = 0.5 * $alas * $tinggi_alas;
$luas_permukaan = 2 * $luas_alas + $alas * $tinggi_prisma + 3 * $tinggi_alas * $tinggi_prisma;

echo "Luas permukaan prisma segitiga dengan alas $alas, tinggi alas $tinggi_alas, dan tinggi prisma $tinggi_prisma adalah $luas_permukaan satuan luas.";
