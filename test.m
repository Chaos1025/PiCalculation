function []=test(times,method)
    p=zeros(1,times);
    x=1:times;
    if method == 0
        for i = 1:times
            num = 10^i;
            p(i)=Pi_MonteCarlo(num,0);
        end
    end
    if method == 1
        for i = 1:times
            num = 10^i;
            p(i)=Pi_Integration(num,0);
        end
    end
    if method == -1
        for i = 1:times
            num = 10^i;
            p1=Pi_Buffon(num,0);
            p(i)=1/p1;
        end
    end
    % plot(x,p);
    p0=p-pi;
    plot(x,p0);
    hold on;
    plot(x,0);
end