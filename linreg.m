%
%Michiko Feehan
%Linear vs Nonlinear Regression
%April 7, 2017

figure;
hold on;
%Step 1:
data = load('RatioM10kDa.dat');
        %assigning t and the ratio to the data values
        
 t5= [1.25 2.25 3.5 15.75 ];         %subset meeting ratio less than 0.6
 ratio5 = [ 0.205 0.2867 0.3636 0.5033];
 newArray= (ratio5.^2);  %squared ratio values 
 display (newArray)
 
p = polyfit(t5, newArray,1);

%Observed data
t = data(1,:);         %assigning t and the ratio to the data values
ratio = data(2,:); 
plot(t,ratio, 'o');

Y = 4* (((0.0102) * t)/(4*3.14));
Y1 = 4* (((0.0119) * t)/(4*3.14));

plot (t, Y);
legend({'Observed','Linear'},'FontSize',12,'TextColor')
xlabel ('time');
ylabel('M ratio') 

 


 

 

