function [r,c] = scanForks(plyr)
    global board;
    pb = zeros(3);
    r = -1; c = -1;
    for i = 1:3
        if length(find(board(i,:) == plyr)) == 1 && length(find(~board(i,:))) >= 2
            for j = 1:3
                if board(i,j) == 0
                    pb(i,j) = pb(i,j) + 1;
                end
            end
        end
        if length(find(board(:,i) == plyr)) == 1 && length(find(~board(:,i))) >= 2
            for j = 1:3
                if board(j,i) == 0
                    pb(j,i) = pb(j,i) + 1;
                end
            end
        end
    end
    if length(find(diag(board) == plyr)) == 1 && length(find(~diag(board))) >= 2
        for i = 1:3
            if board(i,i) == 0
                pb(i,i) = pb(i,i) + 1;
            end
        end
    end
    if length(find(diag(rot90(board)) == plyr)) == 1 && length(find(~diag(rot90(board)))) >= 2
        for i = 1:3
            if board(i,4-i) == 0
                pb(i,4-i) = pb(i,4-i) + 1;
            end
        end
    end
    if ~isequal(pb,zeros(3))
        m = max(pb,[],'all');
        if m >=2
            [r,c] = find(pb == m,1);
        end
    end
    pb
end