function [f]= Q1a_function(E)

N=50;       % N is the times of the events
X=[];       % X shows all the tossing results in one experiment
Y=[];       % Y shows head times for all experiment

for j=1:E
    for i=1:N
        if rand<0.5     % head
            X=[X 1];
        else            % tail
            X=[X 0];
        end
    end
    Y=[Y sum(X)];
    X=[];
end

f=Y;

end
