% This function prints for values from 1 to N:
% “apple” if the value is divisible by 2
% “banana” if the value is divisible by 5
% The number itself if neither is true
% “applebanana” if both are true

function [] = fruit(n)
    for i = 1:n
        if i/2 == floor(i / 2) && i/5 == floor(i/5) %first check if its divisble by both
            disp('applebanana');
        elseif i/2 == floor(i/2) %checks if i is cleanly divisble by 2
            disp('apple');
        elseif i/5 == floor(i/5) %checks if i is cleanly divisble by 5
            disp('banana');
        else %if its divisible by niether 2 nor 5
            disp(i);
        end
    end
end
