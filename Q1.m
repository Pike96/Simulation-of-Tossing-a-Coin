clear;
N=50;       % N is the times of the events
t=1;        % t records the results of last toss, 1 for head, -1 for tail
% Set to 1 because the first one should be count

R=0;        % R is the longest run of heads
r=0;        % r is the temporary run of heads

X=[];       % X show all the tossing results
for i=1:N
    if rand>0.5     % head
        if t==1     % if previous toss is heads
            r=r+1;
            if r>=R     % if the current run is the longest
                R=R+1;
            end
        end
        t=1;
        X=[X 1];
    else            % tail
        r=0;        % clear the temporary run of heads
        t=0;
        X=[X 0];
    end
end
X
disp(['The number of head is: ',num2str(sum(X))]);
disp(['The longest run of head is: ',num2str(R)]);

hist(X)
set(gca,'XTick',[0; 1])
set(gca,'XTicklabel',['Tails'; 'Heads'])    % Show names instead of numbers
text(0.03,N-sum(X)+1,num2str(N-sum(X)))
text(0.93,sum(X)+1,num2str(sum(X)))         % Show the numbers of H&Ts
