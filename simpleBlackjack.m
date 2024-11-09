% This function simulates playing many hands of
% Simple Blackjack where the player continually
% hits up to a given limit. Final score for each
% hand is computed, and the average score over all
% hands is returned.
%
% INPUT limit – The player always hits if their
% hand value is less than limit
% INPUT trials – The number of hands to simulate
%
% OUTPUT avgScore – The average final score of
% all hands.

function avgScore = simpleBlackjack(limit, trials)

if nargin == 1
    trials = 1;
end

%deck values
ace   = 11;
king  = 10;
queen = 10;
jack  = 10;
deck_values = [2, 3, 4, 5, 6, 7, 8, 9, jack, queen, king, ace];
scores = [];

for t = 1:trials
    dealt_hand = randi([1, 12], 1, 2);
    hand_total = sum(deck_values(dealt_hand));

    while hand_total < limit
     %hit
        new_card = randi(13);
        hand_total = hand_total + deck_values(new_card);

        if hand_total > 21
            hand_total = 0;
            break;
        end
 end

scores(end + 1) = hand_total;
avgScore = sum(scores)/trials;

end
