figure(5)
subplot(221)
% Erodable bounds
% sys2=tf(1,[1 1]);
% sys4=sys2*sys2*tf([1 -0.9],[4 1 1]);
% [x4, t4]=step(sys4,15);
% plot(t4,x4)
% 
% subplot(222)
% sys5=2*tf([5 -1],[4 1 1]);
% [x5, t5]=step(sys5,15);
% plot(t4, [x4+1 -x4])
% 
% subplot(223)

% t5=0:1:15;
% x5=[.37 .39 .45 .55 .71 .93 1.21 1.44 1.37 1.15 .85 .45 .3 .15 .15 .15];

t5=[0    5  7    8     11  12  15];
x5=[.37 .71 1.21 1.44 .85 .45 .10];

t8=0:.01:15;
x8=spline(t5,[0 x5 0],t8);

plot(t8, x8,'LineWidth',3)

subplot(223)
plot(t8, x8,'LineWidth',3)
hold on
t6=0:0.01:15;
x6=1./(1+exp(0.1*t6.^1.6-3.5));
plot(t6, x6+.3,'-.','LineWidth',3)
xlabel('Time')
xlswrite('F2point3D.xlsx', [t8; x8; t6; x6]')

%set(gca,'xtick',[])
%set(gca,'ytick',[])