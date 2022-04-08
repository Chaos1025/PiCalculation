function [P]=Pi_Integration(MAX,show)
    x=0:0.01:1;
    y=1./(1+x.^2);
    dx=zeros(1,MAX);
    dy=zeros(1,MAX);
    num = 0;
    for i = 1:MAX
        dx(i)=rand;
        dy(i)=rand;
        if dy(i) <= 1/(1+dx(i)^2)
            num = num+1;
        else
            dx(i)=0;
            dy(i)=0;
        end
    end
    if show == 1
        plot(x, y);
        hold on;
        scatter(dx,dy,1);
        title('Integration');
        daspect([3 2 1])
    end
    P=num/MAX * 4;
    axis square
end