% function Step
% ENTER N=Length, and n=position
 function []=stepeze(n,N)
 if (n>=1 && n<=N)
 xaxis=1:N;
 yaxis= zeros(1, N);
 yaxis(xaxis>=n)=1;
 stem(yaxis)
 title('Dirac function')
 xlabel('Samples')
 ylabel('Amplitude')
 else
 disp('Wrong Parameters')
 end
 