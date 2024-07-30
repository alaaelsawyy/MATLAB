% Numeric Types
intvar = int8(5);
doublevar = 33.33;

disp('The class of intvar is : ');
disp(class(intvar));

disp('The class of doublevar is : ');
disp(class(doublevar));

% Create a row vector evenNumbers containing the first 5 even numbers (2 , 4 , 6 , 8 , 10).
evenNumbers = 2:2:10;

% Create a column vector primeNumbers containing the first 5 prime numbers (2, 3, 5, 7, 11).
primeNumbers = [2; 3; 5; 7; 11];

% Display both evenNumbers and primeNumbers.
disp('The first 5 even numbers are : ');
disp(evenNumbers);

disp('The first 5 prime numbers are : ');
disp(primeNumbers);


% Specialized Matrix Functions

% Create a 3x3 identity matrix identityMatrix using a specialized matrix function.
identityMatrix = eye(3,3);

% Create a 3x3 magic square magicSquare using another specialized matrix function.
magicSquare = magic(3);

% Display both identityMatrix and magicSquare.
disp('identityMatrix = ');
disp(identityMatrix);

disp('magicSquare = ');
disp(magicSquare);


% Matrix Concatenation

% Concatenate the evenNumbers vector horizontally with the primeNumbers vector to create a new row vector combinedVector.
combinedVector = horzcat(evenNumbers , primeNumbers');

%Display the combinedVector.
disp('combinedVector = ');
disp(combinedVector);

% Create a new matrix combinedMatrix by vertically concatenating identityMatrix and magicSquare.
combinedMatrix = vertcat(identityMatrix , magicSquare);

% Display the combinedMatrix.
disp('combinedMatrix = ');
disp(combinedMatrix);
