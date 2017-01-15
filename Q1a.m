clear;

subplot(2,2,1)
hist(Q1a_function(20),100)  % 100 is the number of bins
title('20 times')
xlabel('Number of heads in 50 flips')
ylabel('Times')

subplot(2,2,2)
hist(Q1a_function(50),100)
title('50 times')
xlabel('Number of heads in 50 flips')
ylabel('Times')

subplot(2,2,3)
hist(Q1a_function(200),100)
title('200 times')
xlabel('Number of heads in 50 flips')
ylabel('Times')

subplot(2,2,4)
hist(Q1a_function(1000),100)
title('1000 times')
xlabel('Number of heads in 50 flips')
ylabel('Times')