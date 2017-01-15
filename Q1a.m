%function [f]= Q1a(E)
clear;
E=20;

N=50;       % N is the times of the events
t=0;        % t records the results of last toss, 1 for head, -1 for tail

R=1;        % R is the longest run of head
r=1;        % r is the temporary run of head
% Set to 1 because R and r should count the previous toss

X=[];       % X shows all the tossing results in one experiment
Y=[];       % Y shows head times for all experiment

for j=1:E
    for i=1:N
        if rand>0.5     % head
            X=[X 1];
        else            % tail
            X=[X 0];
        end
    end
    Y=[Y sum(X)];
    X=[];
end

hist(Y)
xlabel('Number of heads in 50 flips')
ylabel('Times')