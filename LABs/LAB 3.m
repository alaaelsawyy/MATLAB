% Task 1: Creating a Simple Function:

% Create a new function in MATLAB called mySimpleFunction.
% This function should take two input arguments (numbers) and return their sum.
% Call this function with sample inputs and display the result.
function sum = mySimpleFunction(num1 , num2)
sum = num1 + num2;
disp('sum = ');
disp(sum);
end

% Task 2: Function Inputs and Outputs:

% Create a function named calculateCircleArea that takes the radius of a circle
%  as input and returns the area of the circle.
% Call the function with different radii and display the results.
radius = 5;
function area = calculateCircleArea(radius)
area = pi * radius^2;
disp('area = ');
disp(area);
end 


% Task 3: Function with Multiple Outputs:

% Create a function named computeStatistics that takes a vector of numbers as input.
% This function should return both the mean and the standard deviation of the input vector.
% Call the function with sample data and display the results.
function [mean, standardDeviation] = computeStatistics(vector)
    mean = mean(vector);
    standardDeviation = std(vector);
    
    fprintf('Mean: %.4f\n', mean);
    fprintf('Standard Deviation: %.4f\n', standardDeviation);
end



% Task 4: Nested Functions:

% Create a main function called outerFunction.
% Inside outerFunction, define another function called innerFunction
% innerFunction should take two inputs, add them, and return the result.
% Call innerFunction from outerFunction and display the result.
 function outerFunction 
    function sum  =  innerFunction(num1 , num2);
sum = num1 + num2;
    end
    disp('Sum = ');
    disp(result);
end



% Task 5: Function Handles:

% Create a function named applyFunction that takes a function handle and a vector as inputs.
% The function should apply the provided function to every element in the vector and return the result.
% Test this function with various function handles, like square, cube, etc.
function result = applyFunction (func , vector)
    result = arrayfunc(vector);
    disp('result = ');
    disp(result);
end


% Task 6: Anonymous Functions:

% Create an anonymous function that calculates the area of a triangle. 
% The function should take base and height as inputs.
% Call the anonymous function with different base and height values to calculate triangle areas.
areaoftriangle = @(base , height)((1/2)*base*height);  %  @ symbol is used to create anonymous functions.
area = areaoftriangle(2,3);
disp('Area = ');
disp(area);




% Task 7: Using Built-in Functions:

% Use MATLAB's built-in functions like max, min, and sum in a script.
% Create a vector of numbers and apply these functions to it.
% Create a vector of numbers
numbers = [10, 5, 8, 2, 15, 3];
maxValue = max(numbers);
minValue = min(numbers);
totalSum = sum(numbers);
fprintf('Maximum value: %d\n', maxValue);
fprintf('Minimum value: %d\n', minValue);
fprintf('Sum of all elements: %d\n', totalSum);

