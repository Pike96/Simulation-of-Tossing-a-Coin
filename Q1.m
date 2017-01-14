clear;
N=input('Please enter the times of tossing the coin N=');
L=0;        % L is the longest run of heads
H=0;        % H is the times of heads
T=0;        % T is the times of tails
for i=1:N
    if rand>0.5
        H=H+1;
    else
        T=T+1;
    end
end
disp(['The longest run of heads is: ',num2str(H),num2str(T)]);