% Prompt the user for input
inputValue = input('Enter a number or character: ', 's');

% Step 2: Display the input in binary
binaryInput = dec2bin(inputValue); % Convert each character to 8-bit binary representation

disp(['Input in binary: ' binaryInput]);

% Step 3: Convert the input to a 16-bit binary representation
binary = dec2bin(inputValue, 16);

% % Step 4: Perform the XOR operations
x1 = xor(str2double(binary(16)), str2double(binary(12)));
x2 = xor(str2double(binary(1)), str2double(binary(3)));

% Step 5: XOR of x1 and x2
x = xor(x1, x2);
x

% Step 6: Update "binary"
binary = [binary(2:16), num2str(x)];
decimal = bin2dec(binary);

% Step 8: Display the updated binary representation and the converted value
disp(['Updated binary representation: ' binary]);
disp(['Converted value: ' char(decimal)]);