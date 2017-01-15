clear;
N=50;               % N is the times of the events
R=0;                % R is the longest run of heads
r=0;                % r is the temporary run of heads
X=rand(1,N);        % X show all the tossing results
for i=1:N
    if X(i)>0.5     % head
        r=r+1;
        if r>R     % if the current run is the longest
            R=R+1;
        end
        X(i)=1;
    else            % tail
        r=0;        % clear the temporary run of heads
        X(i)=0;
    end
end
disp(['The number of head is: ',num2str(sum(X))]);
disp(['The longest run of head is: ',num2str(R)]);

hist(X)
set(gca,'XTick',[0; 1])
set(gca,'XTicklabel',['Tails'; 'Heads'])    % Show names instead of numbers
text(0.03,N-sum(X)+1,num2str(N-sum(X)))
text(0.93,sum(X)+1,num2str(sum(X)))         % Show the numbers of H&Ts
