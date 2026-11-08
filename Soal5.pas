program Soal5; 
uses crt; 

var
    n, i: integer;      // n = jumlah suku, i = penghitung perulangan

    function fibo(k: integer): longint;     // menghitung suku ke-k deret Fibonacci 

var
    a, b, c, j: longint;     // a dan b = dua angka Fibonacci terakhir, c = tempat sementara a+b, j = penghitung putaran looping

begin
    a := 1;     // suku pertama = 1
    b := 1;     // suku kedua = 1
    for j := 3 to k do      // mulai dari suku ke-3 sampai suku ke-k
begin
    c := a + b;     
    a := b;     // geser a ke nilai b
    b := c;     // geser b ke nilai suku baru
end;
    fibo := b;   // hasil akhir dikembalikan ke pemanggil
end;

function pangkat2(k: integer): longint;     // menghitung suku ke-k deret 1,2,4,8,...
var
    j: integer;   // penghitung perulangan
    hasil: longint;   // tempat menyimpan hasil
begin
    hasil := 1;    
    for j := 2 to k do    
    hasil := hasil * 2;     
    pangkat2 := hasil;    
end;

function kuadrat(k: integer): longint;       // menghitung suku ke-k deret 1,4,9,16,...
begin
    kuadrat := k * k;
end;

function deret4(k: integer): longint;        // menghitung suku ke-k deret 2,6,12,20,...
begin
    deret4 := k * (k + 1); 
end;

begin
    clrscr; 
    readln(n);      // baca jumlah suku dari user, disimpan ke n

    for i := 1 to n do      //baris 1: deret Fibonacci
begin
    write(fibo(i));      // tampilkan suku ke-i
    if i < n then write(', ');     // beri koma kalau bukan suku terakhir
end;
    writeln;

    for i := 1 to n do      //baris 2: deret pangkat 2
begin
    write(pangkat2(i)); 
    if i < n then write(', '); 
end;
    writeln; 

  for i := 1 to n do         // baris 3: deret kuadrat
begin
    write(kuadrat(i)); 
    if i < n then write(', '); 
end;
  writeln; // pindah baris

  for i := 1 to n do        // baris 4: deret 2,6,12,...
begin
    write(deret4(i)); 
    if i < n then write(', '); 
end;
    writeln;  

    readln; 
end.