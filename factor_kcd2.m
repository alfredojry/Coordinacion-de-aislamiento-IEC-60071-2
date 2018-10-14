function [ kcd ] = factor_kcd2( relacion )
%UNTITLED2 Summary of this function goes here
% Para la condición de fase a fase
%   Detailed explanation goes here
if (relacion<0.5)
    kcd=1.1
elseif (relacion>=0.5 & relacion<=0.9)
    kcd=-.25*relacion+1.225;
else
    kcd=1;
end

end

