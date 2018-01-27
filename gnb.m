function final=gnb(X1,X,y,m,n)
	product1=1;
	product0=1;
	for i=1:n
		r=1;
		c=1;
		for j=1:m
			if(y(j)==1)
				aux1(r)=X1(j,i);
				r=r+1;
			else
				aux0(c)=X1(j,i);
				c=c+1;
			end;
		end;
		n1=r-1;
		n0=c-1;
		m1=mean(aux1);
		m0=mean(aux0);
		v1=mean((aux1-m1).^2);
		v0=mean((aux0-m0).^2);
		p1(i)=(1/((2*3.14*v1)^0.5))*exp(-0.5*(X(i)-m1)^2/v1);
		p0(i)=(1/((2*3.14*v0)^0.5))*exp(-0.5*(X(i)-m0)^2/v0);
	end;
	for i=1:n
		product1=product1*p1(i);
		product0=product0*p0(i);
	end;
	% Now calculating pre probablities, pre1 and pre0
	pre1=n1/m;
	pre0=n0/m;
	% Now calculating posterior probabilies, post1 and post0
	post1=(product1*pre1)/(product1*pre1+product0*pre0);
	post0=1-post1;
	if(post1>post0)
		final=1;
	elseif(post0>post1)
		final=0;
	else
		disp(sprintf('Gaussian Naive Bayes fails!!!!!'));
	end;
end

		





