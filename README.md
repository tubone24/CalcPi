# CalcPi

Algorithm of Gauss Legendre is a calculation algorithm with PI

initial value

```math
a_0 = 1
b_0 = \frac{1}{\sqrt{2}}
t_0 = \frac{1}{4}
p_0 = 1
```

Iterative
Repeat the following calculations until a and b have the desired precision (number of digits).
When calculating to the nth decimal place, it may be repeated log2(n) times.

a_{n+1} = \frac{a_n + b_n}{2}

