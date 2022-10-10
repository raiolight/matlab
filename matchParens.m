function [bal_p, count]=matchParens(str)
%Determines whether the parentheses of a given expression are balanced, and
%gives the number of imbalanced parentheses.
%The count starts as 0 and the parentheses balanced.
count=0;
bal_p=true;
%The number of parentheses can be counted using a for loop, and then the
%number of forward parentheses compared with the number of back
%parentheses to form a total. If the closing parentheses at any time 
%outnumber the opening ones, the expression is unbalanced. 
for i=1:length(str)
    if str(i)=='('
        count=count+1;
    elseif str(i)==')'
        count=count-1;
        if count<0
            bal_p=false;
        end
    end
end
%If the count is not zero at the end, the statement is invalid.
if count>0
    bal_p=false;
end
end
