%%% review

a = 1;   %%% scalar
dist = [180 210 140 170 160];  %%% vector
scores = [ 98 85 93; 78 81 82; 65 72 67; 88 89 91; 99 96 98]; %%% matrix

%%% indexing --> Remember: x,y = rows, columns
scores(1,:) % row 1, all columns
scores(:,1) % all rows, column 1 

%%% functions on a vector/array
area = [1 4 9 16 25]; 
side = sqrt(area) % element wise operation, returns vector/array: [1 2 3 4 5] % WHY don't need '.'? B/C fcn?

%strings
name = 'kris' % array w/4 string elements
name(1) % returns 'k'

%%% PLOTTING

%%% line plots

t = 1:100; %%% note semicolon - 1 (row) x 100 (column) matrix
y = sin(t/10); %storing result of sin(t/10) in variable y
figure
plot(t,y); % plots 1 -> 100 time points (t) vs output of sin() when t (1 -> 100) is it's argument 
           %[plot(Y) plots the columns of Y versus their index.]

%note: --- help for plot ---

 %plot   Linear plot. 
    %plot(X,Y) plots vector Y versus vector X. 
    %If X or Y is a matrix, then the vector is plotted versus the rows or columns of the matrix,
    %whichever line up.  
    
    %plot(Y) plots the columns of Y versus their index.
    
figure % new figure
plot(t,y,'g.'); % g. = green dots. help [plot] for more
title('sin function')
xlabel('time')
ylabel('sin(t)')

load sample_trace  %%% v = (time, neuron)... 2 neuron columns & index is time
size(v) % 100 row x 2 column matrix
figure
plot(v(:,1)); % plots matrix v (all rows, column/neuron 1) against the index (time)
 
hold on % same figure
plot(v(:,2),'g'); % plot 2nd column in green

xlabel('secs')
ylabel('volts')

%%% bar graphs

% for vectors/arrays
firingRate = [12 18 10]; % make a vector/array
figure 
bar(firingRate) %plots array element vs index in bar graph form
ylabel('rate')

% for entire matrix
figure
bar(scores) % scores is a 5 (rows) x 3 (columns) matrix 
% Result of bar(scores) is elements in each row grouped by column plotted against index

% for only one row of matrix
figure % new figure
studentAvg = mean(scores,2); % average of elements in matrix 'scores' taken across rows (gives column array)
bar(studentAvg) % plots column element vs index; similar to bar(array)

%%% if/then
x = -1; % define variable
sqrt(x) % sqrt(x) is variable stored as 'ans'
if x<0 % if x is less than zero
    display('warning! imaginary number!') % then displat string
else % if x is not less than zero
    display('real number') % display different string
end %note: when entering this if/then statement piece by piece in command line, it ony executes (and shows
%me 'warning!' after I type 'end'

%change to file
%another change


