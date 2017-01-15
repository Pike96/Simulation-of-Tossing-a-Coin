clear;
N=100;              % N is the times of the events
r=0;                % r is the temporary run of heads
r_i=0;              % r_i is the index of runs
X=rand(1,N);        % X stores all the tossing results
Y=[];               % Y stores all runs
for i=1:N
    if X(i)>0.5     % head
        r=r+1;
        X(i)=1;
    else            % tail
        if r>0
            r_i=r_i+1;
            Y(r_i)=r;
            r=0;	% clear the temporary run of heads
        end
        X(i)=0;
    end
end
if X(N)>0.5         % if the last toss is head, count the last run
    r_i=r_i+1;
    Y(r_i)=r;
end

hist(Y,100)
xlabel('Heads run lengths')
ylabel('Times')
