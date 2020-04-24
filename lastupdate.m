cam = webcam;

first = snapshot(cam);

f1=rgb2gray(first);

v1=imresize(f1,[128 128]);

v1 = imsharpen(v1);

background = imopen(v1,strel);

v1 = v1 - background;

v1 = imadjust(v1);

v1 = edge(v1,'sobel');

clear('cam');

pause(2);

cam = webcam;

second = snapshot(cam);

f2=rgb2gray(second);

v2=imresize(f2,[128 128]);

v2 = imsharpen(v2);

background = imopen(v2,strel);

v2 = v2 - background;

v2 = imadjust(v2);

v2 = edge(v2,'sobel');

clear('cam');

pause(2);

cam = webcam;

third = snapshot(cam);

f3=rgb2gray(third);

v3=imresize(f3,[128 128]);

v3 = imsharpen(v3);

background = imopen(v3,strel);

v3 = v3 - background;

v3 = imadjust(v3);

v3 = edge(v3,'sobel');

clear('cam');

pause(2);

cam = webcam;

fourth = snapshot(cam);

f4=rgb2gray(fourth);

v4=imresize(f4,[128 128]);

v4 = imsharpen(v4);

background = imopen(v4,strel);

v4 = v4 - background;

v4 = imadjust(v4);

v4 = im2bw(v4);

v4 = edge(v4,'sobel');

clear('cam');

pause(2);

cam = webcam;

fifth = snapshot(cam);

f5=rgb2gray(fifth);

v5=imresize(f5,[128 128]);

v5 = imsharpen(v5);

background = imopen(v5,strel);

v5 = v5 - background;

v5 = imadjust(v5);

v5 = edge(v5,'sobel');

clear('cam');

figure,
subplot(2,3,1);
imshow(v1);
subplot(2,3,2);
imshow(v2);
subplot(2,3,3);
imshow(v3);
subplot(2,3,4);
imshow(v4);
subplot(2,3,5);
imshow(v5);

pause(2);

cam = webcam;

six = snapshot(cam);

f6=rgb2gray(six);

v6=imresize(f6,[128 128]);

v6 = imsharpen(v6);

background = imopen(v6,strel);

v6 = v6 - background;

v6 = imadjust(v6);

v6 = edge(v6,'sobel');

clear('cam');

figure,
imshow(v6);

solution1= v6-v1;
solution2= v6-v2;
solution3= v6-v3;
solution4= v6-v4;

solution5= v6-v5;

imgArray=[solution1 solution2 solution3 solution4 solution5];

max=1;
for i=2 : 5
    if(imgArray(i)>imgArray(1))
        max=i; 
    end
end

max

clear('cam');