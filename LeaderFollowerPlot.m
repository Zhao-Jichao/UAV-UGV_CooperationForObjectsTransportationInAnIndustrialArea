% 绘图函数
% 将 Simulink 仿真后，导出到工作空间的数据，进行绘制成 3D 图，方便观察

dataBegin = 1;
dataEnd = 300;

% 截取数据
tdata   = tout(dataBegin:dataEnd);
LXdata  = getdatasamples(LX,  (dataBegin:dataEnd));
LYdata  = getdatasamples(LY,  (dataBegin:dataEnd));
F1Xdata = getdatasamples(F1X, (dataBegin:dataEnd));
F1Ydata = getdatasamples(F1Y, (dataBegin:dataEnd));
F2Xdata = getdatasamples(F2X, (dataBegin:dataEnd));
F2Ydata = getdatasamples(F2Y, (dataBegin:dataEnd));

% 绘制关于时间 3D 图
figure(1)
% 所有踪迹
subplot(2,2,1);
plot3(tdata, LXdata,  LYdata , 'linewidth',1.5, 'color','red'); hold on
plot3(tdata, F1Xdata, F1Ydata, 'linewidth',1.5, 'color','blue'); hold on
plot3(tdata, F2Xdata, F2Ydata, 'linewidth',1.5, 'color','green'); hold on
title('All Trajectory');
xlabel('t'); ylabel('x'); zlabel('y');
legend('Leader','Follower1','Follower2');
grid on

% 领航者踪迹
subplot(2,2,2); 
plot3(tdata, LXdata,  LYdata , 'linewidth',1.5, 'color','red'); hold on
plot3(tdata, F1Xdata, F1Ydata, 'linewidth',1.5, 'color','blue'); hold on
plot3(tdata, F2Xdata, F2Ydata, 'linewidth',1.5, 'color','green'); hold on
% title('Leader Trajectory');
xlabel('t'); ylabel('x'); zlabel('y');
grid on

% 跟随者 1 踪迹
subplot(2,2,3); 
plot3(tdata, LXdata,  LYdata , 'linewidth',1.5, 'color','red'); hold on
plot3(tdata, F1Xdata, F1Ydata, 'linewidth',1.5, 'color','blue'); hold on
plot3(tdata, F2Xdata, F2Ydata, 'linewidth',1.5, 'color','green'); hold on
% title('Follower1 Trajectory');
xlabel('t'); ylabel('x'); zlabel('y');
grid on

% 跟随者 2 踪迹
subplot(2,2,4);
plot3(tdata, LXdata,  LYdata , 'linewidth',1.5, 'color','red'); hold on
plot3(tdata, F1Xdata, F1Ydata, 'linewidth',1.5, 'color','blue'); hold on
plot3(tdata, F2Xdata, F2Ydata, 'linewidth',1.5, 'color','green'); hold on
% title('Follower2 Trajectory');
xlabel('t'); ylabel('x'); zlabel('y');
grid on





% % 绘制 X-Y 踪迹图
% figure(2)
% subplot(2,3,4);
% plot(LXdata,  LYdata ); hold on
% plot(F1Xdata, F1Ydata); hold on
% plot(F2Xdata, F2Ydata); hold on
% grid on
% xlabel('x'); ylabel('y');
% legend('L','F1','F2')



