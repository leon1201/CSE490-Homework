close all; clear all; clc

%HW3- calculate 1st 100 prime number, output to vector "Firstprime"
Firstprime=zeros(1,100);
count =2;
Firstprime(1,1)=2;
for div=2:600;
    max = ceil(sqrt(div));
for n=2:max
    if mod(div, n) == 0
        break
    end
end
    if mod(div, n) ~0  ;
        Firstprime(count)=div;
        count=count+1;
    end
    if count>100
        break
    end
end
%Discussion Question:
%A: 2 loops are required to accomplish the goal, one that divides the
%dividend by a series of divisor to test whether the number is a prime
%number and another loop that counts the output of the prime number until
%it reaches 100.