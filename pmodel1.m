function[X1,y,m,n]=pmodel1(data,m,n)
	
	% Managing Missing Values :
	data = data(~any(isnan(data), 2), :);
	% Selection of the first n-1 columns 
	X1 = data(:,1:n-1);
	% Select the 2 most important features for plotting
	% Here only 1st and 2nd features are taken for plotting
	X2 = [data(:,1) data(:,2)];
	% Select the y label
	y = data(:,n);
	%plotData(X2, y);
	[m, n] = size(X1);

