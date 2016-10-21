
function [] =  sinfn2(Freq,Sf)  
   Ts=1/Sf;
   STime = .20;
   t = (0:Ts:STime-Ts);                   
   figure, stem(sin(2*pi*Freq*t))
    title('10Hz Frequency and Sampling Freq of 1000, Peridos 2')
   xlabel('Samples')
   ylabel('Amplitude')
end