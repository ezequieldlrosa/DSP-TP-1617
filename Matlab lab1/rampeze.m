% function ramp
% ENTER N=Length, n=position, a=amplitude
 function []=rampeze(n,N,a)
 if (n>=1 && n<=N)
 xaxis=1:N;
 yaxis= zeros(1, N);
 
 yaxis(xaxis>=n)=1:(N-n+1);
 
 yaxis=yaxis.*a;
 figure, stem(yaxis)
 title('Dirac function')
 xlabel('Samples')
 ylabel('Amplitude')
 else
 disp('Wrong Parameters')
 end
 