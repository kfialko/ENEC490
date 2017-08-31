%monthly stats- will be called in lecture 3

%takes as an input the same EIA gas price data
%outputs 12x2 matrix that describes the sample mean and standard deviation
%for each month in years 2008-present

function [ monthav ] = monthly_stats( vector )

[data, text, combined] = xlsread('RNGWHHDm.xls','Data 1');

%making blank 12x2 matrix
monthav = zeros(12,2);

%calling annual profile function
d = annual_profile(data);
[months, years] = size(d);


for i = 1:years
    %how to pull all of a row into a vector?
    avg = mean (d);
    monthav(i,1) = avg;
    standard = std(d);
    monthav(i,2) = standard;
    
end

