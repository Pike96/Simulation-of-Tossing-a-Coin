clear;
N=50;       % Times of the events
t=0;        % t records the results of last toss, 1 for head, -1 for tail

R=1;        % L is the longest run of head
r=1;        % r is the temporary run of head
% Set to 1 because R and r should count the previous toss

H=0;        % Times of head
T=0;        % Times of tail

for i=1:N
    if rand>0.5     % head
        if t==1     % if previous toss is head
            r=r+1;
            if r>=R     % if the current run is the longest
                R=R+1;
            end
        end
        t=1;
        H=H+1;
    else            % tail
        r=0;        % clear the temporary run of head
        t=-1;
        T=T+1;
    end
end
disp(['The longest run of head is: ',num2str(R)]);

x=[H;T];
bar(x)
set(gca,'XTicklabel',['Heads'; 'Tails'])
