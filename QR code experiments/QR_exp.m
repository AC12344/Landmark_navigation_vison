I = imread("./test_qr2.jpg");
[rows, columns, numberOfColorChannels] = size(I);

roi = [1, 1, columns, rows];
[msg,~,loc] = readBarcode(I,roi,"QR-CODE");
size(loc)
xyText =  [0 0]
Imsg = insertText(I,xyText,msg,"BoxOpacity",1,"FontSize",25);
Imsg = insertShape(Imsg, "FilledCircle", [loc, ...
     repmat(10, length(loc), 1)],"Color","red","Opacity",1);
imshow(Imsg)