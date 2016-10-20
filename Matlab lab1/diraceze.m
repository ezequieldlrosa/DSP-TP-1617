% function Dirac
% ENTER N=Length, and n=position
 function []=diraceze(n,N)
 if (n>=1 && n<=N)
 xaxis=0:(N-1);
 yaxis= zeros(1, N);
 yaxis(n)=1;
 stem(yaxis)
 title('Dirac function')
 xlabel('Samples')
 ylabel('Amplitude')
 else
 disp('Wrong Parameters')
 end
 