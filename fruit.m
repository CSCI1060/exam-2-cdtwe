% This function prints for values from 1 to N:
% “apple” if the value is divisible by 2
% “banana” if the value is divisible by 5
% The number itself if neither is true
% “applebanana” if both are true

function [] = fruit(n)

bananas      = 0
apples       = 0
applebananas = 0
neither      = 0

    for i = 1:n
        if i/2 == floor(i/2) && i/5 == floor(i/5) %first check if its divisble by both
            disp('applebanana');
            applebananas = applebananas + 1;
        elseif i/2 == floor(i/2) %checks if i is cleanly divisble by 2
            disp('apple');
            apples = apples + 1;
        elseif i/5 == floor(i/5)
            disp('banana');
            bananas = bananas + 1;
        else
            disp(i);
            neither = neither + 1;
        end
    end

fprintf('-----------------------\n');
fprintf('Bananas:             %d\n', bananas)
fprintf('Apples:              %d\n', apples)
fprintf('Applebananas:        %d\n', applebananas)
fprintf('Neither:             %d\n', neither)
