M=imread('stego.bmp');
imshow(M)
K=1;
%get Image size
[row, col] = size(M);
n = row*col;

%get pseudorandom bit string by streamcipher 
pad_int = parallel_PRGA(K, n, 4); %PARALLEL VERSION
%pad_int = PRGA(K, n); %SEQUENTIAL VERSION

%convert vector obateined by Streamcipher to matrix
mat_bit = vec2mat(pad_int, col);

%do bit-wise xor between Image and streamcipher output
M_dec = bitxor(uint8(M) ,(mat_bit));
imwrite(M_dec,'decrypt.bmp');
imshow(M_dec)

