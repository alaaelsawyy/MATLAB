% Task 1: While Loop:

% Write a MATLAB script that uses a while loop to print even numbers from 2 to 20.
num = 2;
while (num <= 20)
   if (rem(num,2) == 0)
    disp ('The even number is : ');
    disp(num);
   end
   num = num + 1;
end



% Create a script that calculates the factorial of a given number using a while loop. Prompt the user for input.
number = input('Enter the factorial number \n');
fac = 1;
while (number >= 1)
   fac = fac * number;
   number = number - 1;
end
fprintf('The factorial number : %d\n', fac);



% Task 2: Switch Statement:

% Write a MATLAB script to calculate the cost of a trip based on the mode of transportation. 
% Use a switch statement to handle different cases. The modes are: car, train, bus, and airplane
%  Each mode has a different cost per mile.
disp("The modes are:");
disp('1- car');
disp('2- train');
disp('3- bus');
disp('4- airplane');
Mode = input('Please choose the number of Mode of Transportation: ');
miles = input('Please enter the number of miles : ');
switch (Mode)
   case 1 
      cost = miles * 10;  % Cost per mile for car is $10
      fprintf('The Total cost of trip is : $%d\n', cost); %Total cost
   case 2
      cost = miles * 7;  % Cost per mile for train is $7
      fprintf('The Total cost of trip is : $%d\n', cost); %Total cost
   case 3
      cost = miles * 5;  % Cost per mile for bus is $5
      fprintf('The Total cost of trip is : $%d\n', cost); %Total cost
   case 4
      cost = miles * 50;  % Cost per mile for airplane is $50
      fprintf('The Total cost of trip is : $%d\n', cost); %Total cost
   otherwise
      disp("Invalid mode of transportation. Please choose a number from 1 to 4.");
end


% Create a script that translates a color code into its corresponding name using a switch statement.
%  Prompt the user for input and handle at least five different color codes.
disp('1- 01R (Red)');
disp('2- 21B (Blue)');
disp('3- 31G (Green)');
disp('4- 51Y (Yellow)');
disp('5- 71W (White)');
number = input('Please enter the number of the color code you want to know : ')
switch number
   case 1
       disp('The color is : Red');
   case 2
       disp('The color is : Blue');
   case 3 
       disp('The color is : Green');
   case 4 
       disp('The color is : Yellow');
   case 5 
       disp('The color is : White');
   otherwise
       disp('Invalid input. Please choose a number from 1 to 5.');
end



