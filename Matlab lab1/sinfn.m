function [] =  sinfn(Freq,Sf)  
   Ts=1/Sf;                 
   STime = .10;
   t = (0:Ts:STime-Ts);                   
   figure, stem(sin(2*pi*Freq*t))
   title('10Hz Frequency and Sampling Freq of 100')
   xlabel('Samples')
   ylabel('Amplitude')
    
end
