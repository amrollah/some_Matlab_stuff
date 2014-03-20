function Q5_2()
load handel;
sound(y);
yq = Q5_1(y,-1,1,4);
yq = yq*(2)/(2^(4-1)) - 1;
sound(yq);
yq2 = Q5_1(y,-1,1,2);
yq2 = yq2*(2)/(2^(2-1)) - 1;
sound();
sound(y-yq);
sound(y-yq2);
end