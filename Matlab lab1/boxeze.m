% function box
% ENTER N=Length, and n=position, a=boxlength/2
 function []=boxeze(n,N,a)
 if (n>=1 && n<=N)
 xaxis=1:N;
 yaxis= ones(1, N);
 yaxis(xaxis <=(n-a-1))=0;
 yaxis(xaxis>=(n+a+1))=0;
 stem(yaxis)
 title('Dirac function')
 xlabel('Samples')
 ylabel('Amplitude')
 else
 disp('Wrong Parameters')
 end
 