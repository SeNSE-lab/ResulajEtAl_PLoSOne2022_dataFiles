clear;clc;
load Fig01_data.mat 
winsize = 51;
figure(1); 

subplot(2,1,1);
[a,b]  = find(data);
h = plot(b/1000,a,'k.','MarkerSize',1.5); 
xlim([0,5.5]);

subplot(2,1,2);
norm_count = sum(data)/sum(sum(data));
t = (1:length(norm_count))/1000;
h = plot(t,norm_count,'color',[0.6,0.6,0.6]);  
hold on;
yo = movmean(norm_count,winsize);
h=plot(t,yo,'k', 'Linewidth', 2);
axis([0,5.5,0,0.0012]);
