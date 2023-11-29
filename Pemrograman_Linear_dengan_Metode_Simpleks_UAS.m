%%%% Kode Pemrograman Metode Simpleks Menggunakan Matlab

%% ini Header
% Menghitung solusi masalah dengan pemrograman linear dengan Metode Simpleks

% Max Z = 330x1 +490x2 +300x3 +370x4 +385x5 +450x6 +1000x7
% Kendala 
% 0.01x1 + 0.01x2 + 0.02x3 + 0.03x4 + 0.02x5 + 0.02x6 + 0.05x7 ≤ 433
% 0.02x1 + 0.02x2 + 0.04x3 + 0.27x4 + 0.01x5 + 0.01x6 + 0.00x7 ≤ 967
% 7.82x1 + 7.82x2 + 7.67x3 + 8.54x4 + 8.60x5 + 8.60x6 + 8.05x7 ≤ 81000
% 0.08x1 + 0.08x2 + 0.06x3 + 0.00x4 + 0.05x5 + 0.05x6 + 0.09x7 ≤ 879
% X_i ≥ 0, untuk i = 1, 2, 3, …, 7

%% Inisialisasi
clear
clc
close
format short

% Menginput Parameter Model Pemrograman Linier
banyak_var = 7;            % byk variabel x1 x2
C          = [330 490 300 370 385 450 1000];    % Koef matriks kendala maksimum
kendala    = [0.01 0.01 0.02 0.03 0.02 0.02 0.05; 0.02 0.02 0.04 0.27 0.01 0.01 0.00; 7.82 7.82 7.67 8.54 8.60 8.60 8.05; 0.08 0.08 0.06 0.00 0.05 0.05 0.09]; % Koefisien masing-masing kendala
[banyak_barisKendala, banyak_kolomKendala] = size(kendala);
b       = [433;967;81000;879];     % Ruas kanan kendala
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
SimpleksTable.Properties.VariableNames(1:banyak_kolomzCj)={'x_1','x_2','x_3','x_4','x_5','x_6','x_7','s_1','s_2','s_3','s_4','Solusi'}
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
        SimpleksTable.Properties.VariableNames(1:banyak_kolomzCj)={'x_1','x_2','x_3','x_4','x_5','x_6','x_7','s_1','s_2','s_3','s_4','Solusi'}
        %Memberi Label pada tabel
        
        %%%% Menghitung dan menampilkan solusi OPTIMAL
        BFS=zeros(1,banyak_kolomA);
        BFS(BV)=A(:,end);
        BFS(end)=sum(BFS.*Cost); %Mendefinisikan elemen terakhir dari BFS
                                 %sbg jumlahan dari semua BFS dikalikan
                                 %fungsi objektif
        Current_BFS=array2table(BFS); %Konversi array ke format table
        
Current_BFS.Properties.VariableNames(1:size(Current_BFS,2))={'x_1','x_2','x_3','x_4','x_5','x_6','x_7','s_1','s_2','s_3','s_4','Solusi'}
%Memmberi label pada solusi

    else
        RUN=false;
        fprintf('======== ******************* ======== \n')
        fprintf('     BFS Terbaru Sudah Optimal \n')
        fprintf('======== ******************* ======== \n')
end
end