% Create Two 3x3 Matrices A and B
matrixA=[1 2 3 ; 4 5 6 ; 7 8 9];
matrixB=[10 11 12 ; 13 14 15 ; 16 17 18];

% Calculate the sum of matrixA and matrixB 
matrixSum = matrixA + matrixB;
disp('The matrixSum = ');
disp(matrixSum);

% Create a row vector named rowVector with values from 1 to 5
rowVector = [1:5];

% Create a column vector named columnVector with values from 6 to 10.
columnVector = [6 ; 7 ; 8 ; 9 ; 10];

% Concatenate rowVector and columnVector horizontally
horizontalConcat =horzcat(rowVector,columnVector');
disp('horizontalConcat = ');
disp(horizontalConcat);

% Create a 2x2 matrix named originalMatrix with any values you like 
originalMatrix = eye(2,2);

% Use the repmat function to replicate originalMatrix into a 4x4 pattern 
repeatedMatrix = repmat(originalMatrix,2,2);
disp('repeatedMatrix = ');
disp(repeatedMatrix);

% Create a 3x3 identity matrix 
identityMatrix = eye(3,3);


% Perform matrix multiplication between identityMatrix and matrixA. 
matrixProduct = identityMatrix *  matrixA;
disp('matrixProduct = ');
disp(matrixProduct);


