%% TUGAS KELOMPOK PEMROGRAMAN LINEAR
% Dibuat pada tanggal 3 Oktober 2022
% Dibuat oleh :
% 1. Luis Ricardo 2108541050
% 2. Ragil mona bianca 2108541052
% 3. Sariwati Sagala 2108541055
% 4. Sinsin Triana 2108541077
% 5. Ulan Arystina 2108541088
% 6. Veriyogi 2108541089

%instalisasi awal
clear;
clc;
close all;

%% PROGRAM UTAMA
% Buat program menghitung nilai akkhir mata kuliah beserta konfersinya
% terhadap indeks A, B+, B, C, D, dan E
% Nilai akhir = 12% tugas + 38% UTS + 50% UAS 

disp ('Konversi nilai matakuliah terhadap indeks');
disp ('**************************************');

% Menginput Nama Mahasiswa 
Nama = input('Nama Mahasiswa : ','s');
disp('  ');
disp(['Nama Mahasiswa Matematika Unud :' ,Nama]);

% Menginput Nilai Mahasiswa 
T = input('Masukkan nilai tugas : ');
Ut = input('Masukkan nilai UTS : ');
Ua = input('Masukkan nilai UAS : ');

% Ketentuan Bobot Nilai Mahasiswa
HasilTugas = T*12/100
HasilUTS = Ut*38/100
HasilUAS = Ua*50/100

% Menampilkan Hasil Nilai Akhir
disp (['Mahasiswa yang bernama : ' , Nama]);
disp (['Memiliki hasil tugas : ' , num2str(HasilTugas)]);
disp (['Memiliki hasil UTS : ' , num2str(HasilUTS)]);
disp (['Memiliki hasil UAS : ' , num2str(HasilUAS)]); 

fprintf('\n')

% Program Untuk Menghitung Nilai Akhir Mahasiswa
NilaiAkhir = HasilTugas+HasilUTS+HasilUAS;
disp (['Nilai Ahkirnya adalah ' ,num2str(NilaiAkhir)]);

% Mengubah Nilai Akhir Mahasiswa Menjadi Indeks
if 80<= NilaiAkhir && NilaiAkhir<=100
     disp(['Memiliki indeks A']);
     disp(['Memiliki nilai yang sangat bagus']);
elseif 70<= NilaiAkhir && NilaiAkhir<=79
     disp(['Memiliki indeks B+']);
     disp(['Memiliki nilai yang cukup bagus']);
elseif 60<= NilaiAkhir && NilaiAkhir<=69
     disp(['Memiliki indeks B']);
     disp(['Memiliki nilai yang bagus']);
elseif 50<= NilaiAkhir && NilaiAkhir<=59
     disp(['Memiliki indeks C']);
     disp(['Memiliki nilai yang kurang bagus']);
elseif 40<= NilaiAkhir && NilaiAkhir<=49
     disp(['Memiliki indeks D']);
     disp(['Memiliki nilai yang kurang bagus']);
else
     disp(['Memiliki indeks E']);
     disp(['Memiliki nilai yang sangat buruk dan harus mengulangi matakuliah ini']);
end





