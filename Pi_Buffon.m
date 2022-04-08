function [P] = Pi_Buffon(MAX,show)
theta=zeros(1,MAX);% 针的角度
dx=zeros(1,MAX);% 针的中点位置
dy=zeros(1,MAX);
cross=0;% 相交次数
length=1/2;% 针的长度
x=0:0.01:5;% 绘制线
l1=zeros(1,501);
for i = 1:MAX
    theta(i)=rand*pi;%角度随机
    %中心坐标随机
    dx(i)=rand*4.5+1/4;
    dy(i)=rand-1/2;
    if abs(dy(i))<1/2*length*sin(theta(i))% 如果相交
        cross=cross+1;
        xm=1/2*length*abs(cos(theta(i)));% 针在水平方向上的投影长度的一半
        if show == 1% 对针进行绘图
            xd=(dx(i)-xm):0.002:(dx(i)+xm);
            yd=tan(theta(i)).*(xd-dx(i))+dy(i);
            plot(xd,yd);
            hold on;
        end
    end
end
if show == 1
    plot(x,l1,'r');
    hold on;
    title("Buffon's needle");
    axis([0 5 -0.75 0.75]);
end
P=cross/MAX;
end
