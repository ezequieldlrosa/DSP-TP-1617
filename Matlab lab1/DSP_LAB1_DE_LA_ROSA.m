%DSP
%Practical works – n1
%student: EZEQUIEL DE LA ROSA
% Second semester 2016.
% ezequieldlrosa@gmail.com



%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.1 %%%%%%%%%%%%%
% APPLY DIRACT FUNCTION n=10, N=20
diraceze(10,20)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.2 %%%%%%%%%%%%%
% APPLY step FUNCTION n=10, N=20
stepeze(10,20)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.3 %%%%%%%%%%%%%
% APPLY Ramp FUNCTION n=10, a=2, N=20
rampeze(10,20,2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.4 %%%%%%%%%%%
% APPLY geometric FUNCTION n=10, a=2, N=20
geomeze(10,20,2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5 1.5 %%%%%%%%%%%
% APPLY box FUNCTION n=10, a=3, N=20
boxeze(10,20,3)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5 1.5 %%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5 
%a) Apply for freq=10 and sampling freq=100
sinfn(10,100)

%b Apply for freq=10 and sampling freq=1000 over 2 periods
sinfn2(10,100)

%c Apply for freq=10 and sampling freq=30 over 2 periods
sinfn2(10,30)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2.1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%generate 1000 random gaussian samples. Plot histogram and the fitted
%Gaussian curve

x1=randn(1000, 1); %1000vector
%xmil=x1(1,:);
figure,histfit(x1)
title('Histogram of 1000 samples vector')

%we repeate for 10000 samples

x2=randn(10000, 1); %10000vector
%xmil=x1(1,:);
figure,histfit(x2)
title('Histogram of 10000 samples vector')
% CONLUSION SHOWN IN SCREEN.
%Increasing the amount of samples, the signals is much more 
%closer to the theoretical distribution. Thus, looks much more similar to the fitted one

disp('Increasing the amount of samples, the signals is much more closer to the theoretical distribution. Thus, looks much more similar to the fitted one') 


%%%%%%%%%%%%%%%%%%%%%%%%%% 2.2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2.2 WE repeat with uniform function

v1=rand(1000, 1); %1000vector
%xmil=x1(1,:);
figure,hist(v1)
title('Histogram of 1000 samples vector')

%again with 10000 samples

v2=rand(10000, 1); %10000vector
%xmil=x1(1,:);
figure,hist(v2)
title('Histogram of 10000 samples vector')
disp('Increasing the amount of samples, the signals is much more closer to the theoretical distribution. Thus, looks much more similar to the fitted one') 
%conclusion]: Increasing the amount of samples, the signals is much more closer
%to the theoretical distribution. Thus, looks much more similar to the fitted one') 

%%%%%%%%%%%%%%%%%%%%%%%% 2.3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Computing autocorrelation
%Here we compute autocorrelation of x1 signal (1000 random gaussian samples)

autox1=xcorr(x1);
figure, plot(autox1)
title('Autocorrelation of 1000 samples from gaussian distribution')

%now we compute it for the 10000 random gaussian samples vector
autox2=xcorr(x2);
figure, plot(autox2)
title('Autocorrelation of 10000 samples from gaussian distribution')

%compute correlation for 1000 random samples taken from uniform
%distribution
autov1=xcorr(v1);
figure, plot(autov1)
title('Autocorrelation of 1000 samples from gaussian distribution')


%compute correlation for 10000 random samples taken from uniform
%distribution
autov2=xcorr(v2);
figure, plot(autov2)
title('Autocorrelation of 10000 samples from gaussian distribution')

%%%%%%%%%%%%%%%%%%%% conclusion %%%%%%%%%%%%%%%%%%%%%%%
disp('We can observe that for the Gaussian samples (1000 and 10000 samples vector) noise is white, since it is frequency-independent')
disp('However, for the random samples taken from uniform distribution this doesnt happen. Thus, noise is not Gaussian (since it is frequency dependent) in this case')


%%%%%%%%%%%%%%%%%%%%%%%%% 2.4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2.4
% Generate a whole signal s containing these signals at dirrerent shifts
%binRandSampsEze

%firsts generate the 3 signals
s1=round(rand(1,50));
s2=round(rand(1,50));
s3=round(rand(1,50));

%then we concatened as trend of steps

concatenedS=zeros(300,1);
concatenedS(51:100,1)=s1;
concatenedS(151:200,1)=s2;
concatenedS(251:300,1)=s3;

% we Compute the cross-correlation between the whole signals and s1; s2; s3. Comments the results.
corr_S1_S=xcorr(concatenedS,s1); 
figure,stem(corr_S1_S)
corr_S2_S=xcorr(concatenedS,s2); 
figure, stem(corr_S2_S)
corr_S3_S=xcorr(concatenedS,s3);
figure, stem(corr_S3_S)

disp('We can notice that for each crozxcorrelation done, the highest correlation -representes as the highest peak in signal- corresponds to the signal that has been correlated')

%conclusion
%We can notice that for each crozxcorrelation done, the highest correlation 
%-representes as the highest peak in signal- corresponds to the signal that 
%has been correlated
