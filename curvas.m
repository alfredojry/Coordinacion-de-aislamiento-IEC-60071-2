%disp(' ')
%disp(' Gráfica de las curvas del factor de falla ')

X2=0:.1:8;
[filX2 colX2]=size(X2);
for ii=1:colX2
	Y2(ii)=frontera2(X2(ii));
end

X3=0:.1:8;
[filX3 colX3]=size(X3);
for ii=1:colX3
	Y3(ii)=frontera3(X3(ii));
end

X4=0:.01:7.4100719424;
[filX4 colX4]=size(X4);
for ii=1:colX4
	Y4(ii)=frontera4(X4(ii));
end

X5=6.2158273381:.01:7.4100719424;
[filX5 colX5]=size(X5);
for ii=1:colX5
	Y5(ii)=frontera5(X5(ii));
end

plot(X2,Y2,X3,Y3,X4,Y4,X5,Y5)
grid
title('Curvas del factor de falla considerando R1=0')
text(2.5,6,'K=1,7')
text(5,5,'K=1,6')
text(7,2.5,'K=1,5')
text(5,0.5,'K=1,4')
