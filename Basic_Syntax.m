%% TUGAS INDIVIDU PEMROGRAMAN LINEAR
% Dibuat Tanggal 3 Oktober 2022
% Dibuat Oleh : Sinsin Triana Kian Q (2108541077)

%instalisasi awal
clear;
clc;
close all;

% Buat 2 Matrik 7*7 dg elemen yang ditentukan sendiri
% a) Lakukan Operasi Matrik (+,-,*) 
% b) Lakukan operasi / dengan skalar 13 
% c) Akses Masing-Masing Elemen 

% Buat Program Penghitung Luas Persegi Panjang dan Volume Prisma
% Gunakan Sintaks input untuk memasukan ukuran sisi

%% 1. Tugas Matriks
% Matrik X
 Matrik_X = [5 9 6 0 4 6 3;
             1 4 7 0 8 6 4;
             2 4 6 8 9 5 5;
             2 1 3 4 6 5 7;
             6 7 9 0 0 0 5;
             5 5 3 4 2 2 1;
             6 7 7 5 6 6 4]
 
 % Matrik Y
 Matrik_Y = [8 8 7 6 8 8 9;
             6 6 7 5 5 2 1;
             1 2 1 1 5 4 4;
             7 8 9 0 7 8 4;
             5 4 4 5 5 8 6;
             1 2 6 5 3 8 9;
             4 4 7 7 9 9 7]
 
  % Skalar Z
  Skalar_Z = 13
  
  %% a. Lakukan Operasi Matrik (+,-,*)
  % Penjumlahan Matrik
  XtambahY = Matrik_X + Matrik_Y
  YtambahX = Matrik_Y + Matrik_X
  
  % Pengurangan Matrik
  XkurangY = Matrik_X - Matrik_Y
  YkurangX = Matrik_Y - Matrik_X
  
  % Perkalian Matrik
  XkaliY = Matrik_X * Matrik_Y
  YkaliX = Matrik_Y * Matrik_X
  
  %% b. Lakukan operasi / dengan skalar 13
  % Pembagian Matrik Dengan Skalar
  XkaliseperZ = Matrik_X * 1/Skalar_Z
  YkaliseperZ = Matrik_Y * 1/Skalar_Z
  SeperZkaliX = 1/Skalar_Z * Matrik_X
  SeperZkaliY = 1/Skalar_Z * Matrik_Y
  
  %% c. Mengakses Elemen Matriks
  %% Mengakses Elemen Matrik X
  % Mengakses Matrik X Baris 1 Kolom 7
  disp('Elemen Matrik X Baris 1 Kolom 7'); 
  Matrik_X(1,7)
  
  % Mengakses Matrik X Semua Baris Kolom 2
  disp('Elemen Matrik X Semua Baris Kolom 2');
  Matrik_X(:,7)
  
  %% Mengakses Elemen Matrik Y
  % Mengakses Matrik Y Baris 7 Kolom 2 sampai 3
  disp('Elemen Matrik Y Baris 7 Kolom 2 sampai 3');
  Matrik_Y(7,2:3)
  
  % Mengakses Matrik Y Baris 4 Semua Kolom
  disp('Elemen Matrik Y Baris 4 Semua Kolom');
  Matrik_Y(4,:)
  
  %% Mengakses Elemen Hasil Penjumlahan Matrik X + Y
  % Mengakses Hasil Penjumlahan Matrik X + Y Baris 1 Kolom 1
  disp('Elemen Matrik X + Y Baris 1 Kolom 1');
  XtambahY(1,1)
  
  % Mengakses Hasil Penjumlahan Matrik X + Y Baris 2 Sampai 5 Kolom 6
  disp('Elemen Matrik X + Y Baris 2 Sampai 5 Kolom 6');
  XtambahY(2:5,6)
  
  %% Mengakses Elemen Hasil Penjumlahan Matrik Y + X
  % Mengakses Hasil Penjumlahan Matrik Y + X Baris 7 Semua Kolom
  disp('Elemen Matrik Y + X Baris 7 Semua Kolom');
  YtambahX(7,:)
  
  % Mengakses Hasil Penjumlahan Matrik Y + X Baris 3 Kolom 1
  disp('Elemen Matrik Y + X Baris 3 Kolom 1');
  YtambahX(3,1)
  
  %% Mengakses Elemen Hasil Pengurangan Matrik X + Y
  % Mengakses Hasil Pengurangan Matrik X + Y Baris 1 Kolom 1
  disp('Elemen Matrik X - Y Baris 1 Kolom 1');
  XkurangY(1,1)
  
  % Mengakses Hasil Pengurangan Matrik X + Y Baris 2 Sampai 5 Kolom 6
  disp('Elemen Matrik X - Y Baris 2 Sampai 5 Kolom 6');
  XkurangY(2:5,6)
  
  %% Mengakses Elemen Hasil Pengurangan Matrik Y + X
  % Mengakses Hasil Pengurangan Matrik Y + X Baris 7 Semua Kolom
  disp('Elemen Matrik Y - X Baris 7 Semua Kolom');
  YkurangX(7,:)
  
  % Mengakses Hasil Pengurangan Matrik Y + X Baris 3 Kolom 1
  disp('Elemen Matrik Y - X Baris 3 Kolom 1');
  YkurangX(3,1)
  
  %% Mengakses Elemen Hasil Perkalian Matrik X * Y
  % Mengakses Hasil Perkalian Matrik X * Y Baris 1 Kolom 7
  disp('Elemen Matrik X * Y Baris 1 Kolom 7');
  XkaliY(1,7)
  
  % Mengakses Hasil Perkalian Matrik X * Y Baris 2 Sampai 5 Kolom 6
  disp('Elemen Matrik X * Y Baris 2 Sampai 5 Kolom 6');
  XkaliY(2:5,6)
  
  %% Mengakses Elemen Hasil Perkalian Matrik Y * X
  % Mengakses Hasil Perkalian Matrik Y * X Baris 4 Semua Kolom
  disp('Elemen Matrik Y * X Baris 4 Semua Kolom');
  YkaliX(4,:)
  
  % Mengakses Hasil Perkalian Matrik Y * X Semua Baris Kolom 6
  disp('Elemen Matrik Y * X Semua Baris Kolom 6');
  YkaliX(:,6)
  
  %% Mengakses Elemen Hasil Perkalian Matrik Y * X
  % Mengakses Hasil Perkalian Matrik Y * X Baris 4 Semua Kolom
  disp('Elemen Matrik Y * X Baris 4 Semua Kolom');
  YkaliX(4,:)
  
  % Mengakses Hasil Perkalian Matrik Y * X Semua Baris Kolom 6
  disp('Elemen Matrik Y * X Semua Baris Kolom 6');
  YkaliX(:,6)
  
  %% Mengakses Elemen Hasil Pembagian Matrik Dengan Skalar Z
  % Mengakses Hasil Pembagian Matrik Dengan Skalar Z untuk X * (1/Z) Baris 1 Sampai 5 Kolom 6
  disp('Elemen Matrik X * (1/Z) Baris 1 Sampai 5 Kolom 6');
  XkaliseperZ(1:5,6)
  
  % Mengakses Hasil Pembagian Matrik Dengan Skalar Z untuk Y * (1/Z) Baris 3 Kolom 1
  disp('Elemen Matrik Y * (1/Z) Baris 3 Kolom 1');
  YkaliseperZ(3,1)
  
  % Mengakses Hasil Pembagian Matrik Dengan Skalar Z untuk (1/Z) * X Baris 5 Kolom 2 
  disp('Elemen Matrik (1/Z) * X Baris 5 Kolom 2');
  SeperZkaliX(5,2)
  
  % Mengakses Hasil Pembagian Matrik Dengan Skalar Z untuk (1/Z) * Y Baris 4 Kolom 2 sampai 5 
  disp('Elemen Matrik (1/Z) * Y Baris 4 Kolom 2 sampai 5');
  SeperZkaliY(4,2:5)
  
  %% 2. Program Menghitung Luas Persegi Panjang Dan Volume Prisma
  % Menampilkan Pilihan Perhitungan Yang Tersedia
  disp('Program Menghitung Luas Persegi Panjang Dan Volume Prisma');
  disp('Ketik Angka "1" Untuk Menghitung Luas Persegi Panjang');
  disp('Ketik Angka "2" Untuk Menghitung Volume Prisma Segitiga');
  disp('Ketik Angka "3" Untuk Menghitung Volume Prisma Segiempat');
  disp('Ketik Angka "4" Untuk Menghitung Volume Prisma Segilima');
  disp('Ketik Angka "5" Untuk Menghitung Volume Prisma Segienam');
  
  % Tempat Menginput Pilihan Perhitungan Yang diinginkan
  Ketik = input('Masukkan Angka Pilihan Anda: ')
  
  % Perhitungan Luas Persegi Panjang
  if Ketik == 1
      Panjang = input('Masukkan Panjang(cm) : ')
      Lebar   = input('Masukkan Lebar(cm) : ')
      disp('Luas Persegi Panjang (cm^2) adalah: ')
      LuasPersegiPanjang = Panjang * Lebar;
      LuasPersegiPanjang
  % Perhitungan Volume Prisma Segitiga
  elseif Ketik == 2
      Alas         = input('Masukkan Alas(cm) : ')
      TinggiAlas   = input('Masukkan Tinggi Alas(cm) : ')
      TinggiPrisma = input('Masukkan Tinggi Prisma(cm) : ')
      disp('Volume Prisma Segitiga (cm^3) adalah: ')
      VolumePrismaSegitiga = 1/2 * Alas * TinggiPrisma * TinggiAlas;
      VolumePrismaSegitiga
  % Perhitungan Volume Prisma Segiempat    
  elseif Ketik == 3
      Panjang      = input('Masukkan Panjang(cm) : ')
      Lebar        = input('Masukkan Lebar(cm) : ')
      TinggiPrisma = input('Masukkan Tinggi Prisma(cm) : ')
      disp('Volume Prisma Segiempat (cm^3) adalah: ')
      VolumePrismaEmpat = Panjang * Lebar * TinggiPrisma;
      VolumePrismaEmpat
  % Perhitungan Volume Prisma Segilima    
  elseif Ketik == 4
      Apotema      = input('Masukkan Apotema(cm) : ')
      TepiDasar    = input('Masukkan Tepi Dasar(cm) : ')
      TinggiPrisma = input('Masukkan Tinggi Prisma(cm) : ')
      disp('Volume Prisma Segilima (cm^3) adalah: ')
      VolumePrismaSegilima = 5/2 * Apotema * TinggiPrisma * TepiDasar;
      VolumePrismaSegilima
  % Perhitungan Volume Prisma Segienam
  elseif Ketik == 5
      Apotema      = input('Masukkan Apotema(cm) : ')
      TepiDasar    = input('Masukkan Tepi Dasar(cm) : ')
      TinggiPrisma = input('Masukkan Tinggi Prisma(cm) : ')
      disp('Volume Prisma Segienam (cm^3) adalah: ')
      VolumePrismaSegienam = 3 * Apotema * TinggiPrisma * TepiDasar;
      VolumePrismaSegienam
  % Jika Menginput Pilihan Perhitungan Yang Tidak Tersedia
  else
      disp('Tolong Masukkan Angka Yang Tersedia');
  end

  