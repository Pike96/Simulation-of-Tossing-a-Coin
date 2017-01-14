clear;
N=input('Please enter the times of tossing the coin N=');
R=1;        % L is the longest run of heads
r=1;        % r is the temporary run of heads
% Set to 1 because R and r should count the previous toss

t=0;        % t records the results of last toss, 1 for head, -1 for tail
x=[];       % x show all the tossing results
for i=1:N
    if rand>0.5     % head
        if t==1     % if previous toss is head
            r=r+1;
            if r>=R     % if the current run is the longest
                R=R+1;
            end
        end
        t=1;
        x=[x,1];
    else            % tail
        r=0;        % clear the temporary run of heads
        t=-1;
        x=[x,0];
    end
end
x        % show all results
disp(['The longest run of heads is: ',num2str(R)]);
