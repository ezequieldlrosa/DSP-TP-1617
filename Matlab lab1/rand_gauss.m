%2.1 random gausian process

x1=randn(1000, 1); %1000vector
%xmil=x1(1,:);
histfit(x1)
title('Histogram of 1000 samples vector')

x2=randn(10000, 1); %10000vector
%xmil=x1(1,:);
figure,histfit(x2)
title('Histogram of 10000 samples vector')

disp('Increasing the amount of samples, the signals is much more closer to the theoretical distribution. Thus, looks much more similar to the fitted one') 

%2.2 same with uniform
v1=rand(1000, 1); %1000vector
%xmil=x1(1,:);
hist(v1)
title('Histogram of 1000 samples vector')

v2=rand(10000, 1); %10000vector
%xmil=x1(1,:);
figure,hist(v2)
title('Histogram of 10000 samples vector')
disp('Increasing the amount of samples, the signals is much more closer to the theoretical distribution. Thus, looks much more similar to the fitted one') 


%%%%%%%%%%%%%%%%%%%%%autocorrelation%%%%%%%%%%%%%
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


