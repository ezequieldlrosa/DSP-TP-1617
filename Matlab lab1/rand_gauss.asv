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
autox1=xcorr(x1);
plot(autox1)
title('Autocorrelation of 1000 samples from gaussian distribution')

autox2=xcorr(x2);
figure, plot(autox2)
title('Autocorrelation of 10000 samples from gaussian distribution')

autov1=xcorr(v1);
plot(autov1)
title('Autocorrelation of 1000 samples from gaussian distribution')

autov2=xcorr(v2);
figure, plot(autov2)
title('Autocorrelation of 10000 samples from gaussian distribution')
