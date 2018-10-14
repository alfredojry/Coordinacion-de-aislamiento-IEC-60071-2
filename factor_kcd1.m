function [ kcd ] = factor_kcd1( relacion )
%UNTITLED Summary of this function goes here
% Para la condición de fase a tierrra
%   Detailed explanation goes here
if (relacion<0.7)
    kcd=1.1
elseif (relacion>=0.7 & relacion<=1.18)
    kcd=-.20833*relacion+1.2458;
else
    kcd=1;
end

end

