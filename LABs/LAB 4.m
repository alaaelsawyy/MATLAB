% Cell Arrays:

% Create a cell array containing various data types (numbers, text, and variables).
% Access and display specific elements within the cell array.
person_data = {20 , 'Alaa' , 'X'};
person_data;
disp('person_data is : ');
disp(person_data);



% Structures:

% Create a simple structure to store information about a person (name, age, city).
%Access and display the structure fields.
person_data = struct('Name', 'Alaa' , 'Age' , 20 ,'City','El Mahalla El kubra');
disp('person_data is : ');
disp (person_data);



% Character Data:

% Create a character array with your name.
% Concatenate your name with another character array.
% Display the results.
name1 = 'Alaa';
name2 = 'Elsawy';
concat_name = [name1 ,' ', name2];
disp('Concatenate_name is : '  );
disp(concat_name);



% Conditional Statements (If):

% Write an if statement that checks if a number is even or odd.
% Display a message based on the result of the if statement.
num = 4;
if (rem(num , 2) == 0)
    disp('The number is even');
else
    disp('The number is odd');
end


%  For Loops:

% Create a for loop to generate a sequence of numbers (e.g., 1 to 10).
% Display the numbers within the loop.
for i = 1:10;
    fprintf('%d\n',i);
end 



% Basic Plotting:

% Generate data for a simple plot (e.g., a sine wave).
% Plot the data with proper labels and a legend.
x = 0 : 360;
sinewave = sind(x);
plot (x , sinewave);
xlabel ('x : degree');
ylabel('sinewave : value');
legend('Sine wave');
title('Sine Wave Graph');