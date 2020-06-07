function f = facto2 (N)
if N == 0
    f = 1;
else
    f = N * facto2 (N - 1);
end