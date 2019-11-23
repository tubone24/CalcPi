# CalcPi

## Algorithm of Gauss Legendre

Algorithm of Gauss Legendre is a calculation algorithm with PI.

Convergence is very fast in calculating the pi, and in 2009, 2,576,980,370,000 digits 
(about 2.6 trillion digits) were calculated using this formula.

This algorithm was studied separately by Karl Friedrich Gauss and Adrian-Mari Legendre. 

In order to obtain the arithmetic geometric mean of two numbers,
 
 each value is replaced with the arithmetic mean (arithmetic mean) and the geometric mean (geometric mean).

### Algorithm

#### Set the initial value

![a_0 = 1](https://latex.codecogs.com/png.latex?a_0&space;=&space;1)

![b_0 = \frac{1}{\sqrt{2}}](https://latex.codecogs.com/png.latex?b_0&space;=&space;\frac{1}{\sqrt{2}})

![t_0 = \frac{1}{4}](https://latex.codecogs.com/png.latex?t_0&space;=&space;\frac{1}{4})

![p_0 = 1](https://latex.codecogs.com/png.latex?p_0&space;=&space;1)

#### Iterative
Repeat the following calculations until a and b have the desired precision (number of digits).
When calculating to the nth decimal place, it may be repeated log2(n) times.

![a_{n+1} = \frac{a_n + b_n}{2}](https://latex.codecogs.com/png.latex?a_{n&plus;1}&space;=&space;\frac{a_n&space;&plus;&space;b_n}{2})

![b_{n+1} = \sqrt{a_n b_n}](https://latex.codecogs.com/png.latex?b_{n&plus;1}&space;=&space;\sqrt{a_n&space;b_n})

![t_{n+1} = t_n - p_n(a_n - a_{n+1})^2](https://latex.codecogs.com/png.latex?t_{n&plus;1}&space;=&space;t_n&space;-&space;p_n(a_n&space;-&space;a_{n&plus;1})^2)

![p_{n+1} = 2p_n](https://latex.codecogs.com/png.latex?p_{n&plus;1}&space;=&space;2p_n)

#### π calculation

Circumference π can be approximated using a, b, t as follows.

![\Pi \approx \frac{(a + b)^2}{4t}](https://latex.codecogs.com/png.latex?\Pi&space;\approx&space;\frac{(a&space;&plus;&space;b)^2}{4t})

