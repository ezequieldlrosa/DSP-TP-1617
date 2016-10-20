% function geom
% ENTER N=Length, n=position, a=base
 function []=geomeze(n,N,a)
 if (n>=1 && n<=N)
 xaxis=1:N;
 yaxis= zeros(1, N);
 
 for i=1:N
     if (xaxis(i)>=n)
         yaxis(i)=a^(i-n);
     end
 end
 
 %yaxis(xaxis>=n)=1:(N-n+1);
 
 %yaxis=yaxis.*a;
 stem(yaxis)
 title('Dirac function')
 xlabel('Samples')
 ylabel('Amplitude')
 else
 disp('Wrong Parameters')
 end
 