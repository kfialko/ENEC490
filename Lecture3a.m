%Lecture 3

[data, text, combined] = xlsread('RNGWHHDm.xls','Data 1');

%call annual profile function
d = annual_profile(data); 
[months,years] = size(d);

% convert to normal dates
%matlabdate = x2mdate(d, 1);
%d = datestr(matlabdate);

%create new figure
figure; 
hold on;

%plot function within for loop
for i  = 1:years
    plot(d(:,i),'color',rand(1,3));
end

xlabel('Month','FontSize',14);
set(gca, 'XTickLabel',{'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'});
set(gca,'XTick',1:1:12);
ylabel('Natural Gas Price ($/MMBtu)','FontSize',14);
legend('2008','2009','2010','2011','2012','2013','2014','2015','2016');

%statistics part 3- creating random samples
month = monthly_stats(vector);

april = month(4,1:2);
randn(1000,april); 

january = month(1,1:2);
randn(1000, january);

figure;
histogram(april);
hold on;
histogram(january);

xlabel('Standard Deviations', 'FontSize', 14);
ylabel('Natural Gas Price ($/MMBtu)', 'FontSize', 14);
legend('April', 'January');




