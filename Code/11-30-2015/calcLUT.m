function LUT=calcLUT(vec,last,Primes)
% A preliminary function for tsp_dp1.
j=length(vec);
LUT=Primes(last);
for i=2:j
    LUT=LUT*Primes(vec(i));
end
end
