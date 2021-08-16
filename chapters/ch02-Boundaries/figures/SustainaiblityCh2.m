t=0:.01:1;
figure(1)
subplot(221)
% Limits are distant or growing
y=exp(t);
plot(t,[y; y+ones(1,length(y))],'LineWidth',3)
set(gca,'xtick',[])
set(gca,'ytick',[])
xlabel('Time')

figure(2)
subplot(221)
% Limits are seen
sys1=tf(3,[0.1 1 1]);
sys2=tf(1,[1 1]);
[x2, t2]=step(sys1*sys2,6);
plot(t2, x2,[0 6],[3.25 3.25],'LineWidth',3)
set(gca,'xtick',[])
set(gca,'ytick',[])
xlabel('Time')

figure(3)
subplot(221)
% Oscillations due to delayed signals but robust bounds
sys3=tf(1,[.81 .15 1]);
sys3lim=-0.5*sys3*sys2;
[x3, t3]=step(sys3,15);
[x3a, t3a]=step(sys3lim,15);
plot(t3, x3,t3a, x3a+1.75,'LineWidth',3)
set(gca,'xtick',[])
set(gca,'ytick',[])
xlabel('Time')

figure(4)
subplot(221)
% Erodable bounds

% sys4=sys2*sys2*tf([1 -0.9],[4 1 1]);
% [x4, t4]=step(sys4,15);
% sys5=2*tf([5 -1],[4 1 1]);
% [x5, t5]=step(sys5,15);
% plot(t4, [x4+1 -x4])
t6=0:0.01:15;
x6=1./(1+exp(0.1*t6.^1.6-3.5));
t5=0:1:15;
x5=[.37 .39 .45 .55 .71 .93 1.21 1.44 1.37 1.15 .85 .45 .3 .15 .15 .15];
%plot(t6, x6)
plot(t5, x5, t6, x6+.3,'LineWidth',3)
xlabel('Time')
set(gca,'xtick',[])
set(gca,'ytick',[])