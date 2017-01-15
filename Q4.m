clear;
N=input('Please enter the number of heads N=');
num_heads=0;        % Count head tosses
num_tosses=0;       % Count all tosses

while num_heads<N
    num_tosses=num_tosses+1;
    if rand>0.5     % head
        num_heads=num_heads+1;
    end
end
disp(['The number of tosses is: ',num2str(num_tosses)]);
