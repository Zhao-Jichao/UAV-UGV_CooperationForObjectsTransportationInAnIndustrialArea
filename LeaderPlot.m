% 绘图函数
% 将 Simulink 仿真后，导出到工作空间的数据，进行绘制成 3D 图，方便观察

dataBegin = 1;
dataEnd = 300;

% 截取数据
tdata   = tout(dataBegin:dataEnd);
LXdata  = getdatasamples(XL,  (dataBegin:dataEnd));
LYdata  = getdatasamples(YL,  (dataBegin:dataEnd));


% 绘制关于时间 3D 图
figure(1)
% 所有踪迹
subplot(2,2,1);
plot3(tdata, LXdata,  LYdata, 'linewidth',1.5, 'color','red'); hold on
title('All Trajectory');
xlabel('t'); ylabel('x'); zlabel('y');
legend('Leader');
grid on

subplot(2,2,2);
plot3(tdata, LXdata,  LYdata, 'linewidth',1.5, 'color','red'); hold on
title('All Trajectory');
xlabel('t'); ylabel('x'); zlabel('y');
legend('Leader');
grid on

subplot(2,2,3);
plot3(tdata, LXdata,  LYdata, 'linewidth',1.5, 'color','red'); hold on
title('All Trajectory');
xlabel('t'); ylabel('x'); zlabel('y');
legend('Leader');
grid on

subplot(2,2,4);
plot3(tdata, LXdata,  LYdata, 'linewidth',1.5, 'color','red'); hold on
title('All Trajectory');
xlabel('t'); ylabel('x'); zlabel('y');
legend('Leader');
grid on