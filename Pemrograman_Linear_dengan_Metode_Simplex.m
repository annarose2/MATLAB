% Nama : Sinsin Triana Kian Q
% Kelas : B
% NIM : 2108541077
% Tugas Pemrograman Metode Simpleks Menggunakan Matlab

%% ini Header
% Menghitung solusi masalah dg pemrograman linear dengan Metode Simplex

% Max Z = 60x1-100x2
% Kendala :
% 10x1+6x2 ≤210
% 40x1+8x2 ≤6800
% 3x1+3x2  ≤870
% 4x1+10x2 ≤2000
% x1,x2    ≥0

%% Inisialisasi
clear
clc
close
format short

% Parameter inputan
banyak_var = 2;            % byk variabel x1 x2
C          = [60 -100];    % Koef matriks kendala maksimum
kendala    = [10 6; 40 8; 3 3; 4 10]; % Koefisien masing-masing kendala
[banyak_barisKendala, banyak_kolomKendala] = size(kendala);
b       = [210;6800;870;2000];     % Ruas kanan kendala
s       = eye(banyak_barisKendala);% Buat matriks Identitas dg ukuran 
                                   % Baris dari kendala
A       = [kendala s b];           % Bentuk tabel simpleks
[banyak_barisA,banyak_kolomA] = size(A);

Cost = zeros(1,banyak_kolomA);  % Buat matriks cost function cj
Cost(1:banyak_var)= C           % n=3 kolom pertama kita isi sbg
                                % koef matriks kendala C
                                
%%%% Kendala BV (Variabel Basis) 
BV   = banyak_var+1:1:banyak_kolomA-1; % Mendefinisikan indeks s
%%%% Menghitung zj-cj baris
ZjCj = Cost(BV)*A-Cost;
%%%% Untuk menampilkan tabel
zCj  = [ZjCj;A];
[banyak_bariszCj,banyak_kolomzCj] = size(zCj);
% Ini adh iterasi awal
SimpleksTable=array2table(zCj); % Mengubah format array mjd tabel
SimpleksTable.Properties.VariableNames(1:banyak_kolomzCj)={'x_1','x_2','s_1','s_2','s_3','s_4','Solusi'}
% Sintak diatas untuk memberi label pada tabel

%% Syntaks Utama

RUN=true;
while RUN
    
    %%% cek optimal solusi : cari nilai minimum dari tabel tsb
    if any (ZjCj<0) % Untuk memeriksa apakah ada nilai ZjCj yg negatif
                    % jika negatif maka bukan solusi optimal
            fprintf('    BFS Ini Bukan Solusi Optimal \n')
            fprintf('\n============= Hasil Iterasi Selanjutnya =============\n')
        disp('Basic Variable (BV) Lama');
        disp(BV);   %Menampilkan nilai BV (Variable Basis)
        %% Menentukan Variabel Masuk (Entering Variabel)
        ZC=ZjCj(1:end-1); % Menyimpan nilai zj-cj (Kecuali nilai solusi)
                          % pada variabel zc
        [min_ZjCj, kolom_kunci]=min(ZC); % Mencari nilai min Zj-Cj dan indeks
                                         % kolom dimna nilai min berada
        fprintf('Elemen minimum di baris Zj-Cj adalah %d dan berada di kolom %d \n', min_ZjCj, kolom_kunci);
        fprintf('Variabel Masuk (Entering Variable) adh %d \n', kolom_kunci)
        %% Menentukan Variabel Keluar (Leaving Variabel)
        sol=A(:,end); %Mendefinisikan variable sol yg nilainya
                      %diberikan oleh semua baris dari kolom terakhir dari A
        Kolom=A(:,kolom_kunci); %Mendefinisikan variable kolom yang nilainya
                                %diberikan oleh semua baris dari kolom
                                %terakhir dari A
        [banyak_barisKolom,banyak_kolomKolom]=size(Kolom);
        
        % Mengecek kepositifan semua elemen pivot
        if all(Kolom<=0)
            error('LPP Tidak Terbatas. Semua elemen <=0 di kolom, %d',kolom_kunci);
        else
            for i=1:banyak_barisKolom
                if Kolom(i)>0 %Syarat rasio dihitung bila elemen kolom positif
                    rasio(i)=sol(i)./Kolom(i); %menentukan rasio dari solusi
                else 
                    rasio(i)=inf;
                end
            end
            
            %%%% Mencari nilai dan posisi dari nilai min rasio
            [min_rasio,baris_kunci]=min(rasio);
            fprintf('Rasio minimum terletak di baris %d \n',baris_kunci);
            fprintf('Variabel Keluar (Leaving Variable) adh %d\n',BV(baris_kunci));
        end
        
        %%
        BV(baris_kunci)=kolom_kunci;
        disp('Basic Variabels (BV) Baru=');
        disp(BV); % Menampilkan Nilai BV (Variabel Basis)
        
        %% Elemen Kunci Mereplace BV dg kolom kunci
        elemen_kunci=A(baris_kunci,kolom_kunci); % Mendefinisikan elemen kunci sbg nilai dr elemen A yg berada pada baris n kolom kunci
        
        %%% UPDATE TABLE UNTUK ITERASI SELANJUTNYA
        A(baris_kunci,:)=A(baris_kunci,:)./elemen_kunci;
        [banyak_barisA,banyak_kolomA] = size(A);
        
        % Prosedur OBE
        for i=1:banyak_barisA
            if i~=baris_kunci
                A(i,:)=A(i,:)-A(i,kolom_kunci).*A(baris_kunci,:);
            end
        end
        
        % Update nilai Zj-Cj (ini juga sama" OBE)
        ZjCj=ZjCj-ZjCj(kolom_kunci).*A(baris_kunci,:);
        % Untuk menampilkan tabel
        zCj = [ZjCj;A];
        [banyak_bariszCj,banyak_kolomzCj]=size(zCj);
        %ini adh iterasi awal
        SimpleksTable=array2table(zCj); %mengubah format array mjd table
        SimpleksTable.Properties.VariableNames(1:banyak_kolomzCj)={'x_1','x_2','s_1','s_2','s_3','s_4','Solusi'}
        %Memberi Label pada tabel
        
        %%%% Menghitung dan menampilkan solusi OPTIMAL
        BFS=zeros(1,banyak_kolomA);
        BFS(BV)=A(:,end);
        BFS(end)=sum(BFS.*Cost); %Mendefinisikan elemen terakhir dari BFS
                                 %sbg jumlahan dari semua BFS dikalikan
                                 %fungsi objektif
        Current_BFS=array2table(BFS); %Konversi array ke format table
        
Current_BFS.Properties.VariableNames(1:size(Current_BFS,2))={'x_1','x_2','s_1','s_2','s_3','s_4','Solusi'}
%Memmberi label pada solusi

    else
        RUN=false;
        fprintf('======== ******************* ======== \n')
        fprintf('     BFS Terbaru Sudah Optimal \n')
        fprintf('======== ******************* ======== \n')
end
end