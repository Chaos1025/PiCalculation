function [P]=Pi_MonteCarlo(MAX,show)
    x=0:0.01:1;
    y=sqrt(1-x.^2);
    dx=zeros(1,MAX);
    dy=zeros(1,MAX);
    num = 0;
    for i = 1:MAX
        dx(i)=rand;
        dy(i)=rand;
        if dx(i)^2+dy(i)^2 <= 1
            num = num + 1;
        else
            dx(i)=0;
            dy(i)=0;
        end
    end
    if show == 1
        plot(x, y);
        hold on;
        scatter(dx,dy,1);
        title('Pi Calculating');
        axis square;
    end
    P=num/MAX * 4;
end