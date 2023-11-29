%% ini untuk header
%PROGRAM UNTUK MENAMPILKAN SELURUH PERMUTASI
                                                        
%% Inisialisasi 
clear
clc
close
format short

%% program utama

fprintf('PROGRAM UNTUK MENAMPILKAN SELURUH PERMUTASI \n');
fprintf('------------------------------------------- \n');
fprintf('\n');
 
S=[1 2 3 4];
fprintf('S= ');
disp(S);
[BanyakBarisS,BanyakKolomS]=size(S);

fprintf('Permutasi 4P1: \n');
for i=1:BanyakKolomS
    B=S(i);
    disp(B);
end

fprintf('Permutasi 4P2: \n');
for i=1:BanyakKolomS
    for j=1:BanyakKolomS
        B=S(i);
        C=S(j);
        if B~=C
            Z=[B C];
            disp(Z);
        end
    end
end
    
fprintf('Permutasi 4P3: \n');
for i=1:BanyakKolomS
    for j=1:BanyakKolomS
        for k=1:BanyakKolomS
            B=S(i);
            C=S(j);
            D=S(k);
            if B~=C & B~=D & C~=D
                Z=[B C D];
                disp(Z);
            end
        end
    end
end

fprintf('Permutasi 4P3: \n');
for i=1:BanyakKolomS
    for j=1:BanyakKolomS
        for k=1:BanyakKolomS
            for l=1:BanyakKolomS
                B=S(i);
                C=S(j);
                D=S(k);
                E=S(l);
                if B~=C & B~=D & B~=E & C~=D & C~=E & D~=E
                Z=[B C D E];
                disp(Z);
                end
            end
        end
    end
end
