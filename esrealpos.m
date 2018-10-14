function [ filtro ] = esrealpos( dato )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%Esta función devuelve un 1 si se le pasa como argumento un real positivo.
%En otro caso la salida será cero
fil1=1;
fil2=1;
fil3=1;
[a b]=size(dato);
% Si usuario ingresa vector
if (a~=1 & b~=1)
    fil1=0;
    errordlg('Por el amor de Dios, ingrese valores válidos','Error');
end
% Si usuario ingresa complejo
if (imag(dato)~=0)
    fil2=0;
    errordlg('Por el amor de Dios, ingrese valores válidos','Error');
end
% Si usuario ingresa negativo o cero
if (dato<=0)
    fil3=0;
    errordlg('Por el amor de Dios, ingrese valores válidos','Error');
end
filtro=fil1*fil2*fil3;

end

