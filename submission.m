j = 1;
submis = get_submit(test);
% step = int16(double(string(table2array(test(:,4)))));
for i = 1: size(test,1)
   if step(i)==1
        begin = i;
   end
    
   if step(i+1)==1
       final = i;
   test(final,5) = cellstr(rate( test(begin:final,:),hotelprop,hotelname));
   submis(j,:)= test(final,1:5);
   j = j+1 %up to 261731
   end
end