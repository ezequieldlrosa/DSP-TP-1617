function []=  sinfn3(Freq,Sf)  
    Ts=1/Sf;
    StopTime = .20;
   t = (0:Ts:StopTime-Ts);                   
   figure, stem(sin(2*pi*Freq*t))
   title('10Hz Frequency and Sampling Freq of 30, Peridos 2')
   xlabel('Samples')
   ylabel('Amplitude')

end
