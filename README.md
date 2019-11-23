# CalcPi.jl

> This is a package that calculates the circumference ratio.

## Installation

Install with Pkg, just like any other registered Julia package:

```julia
pkg> add https://github.com/tubone24/CalcPi.jl  # Press ']' to enter te Pkg REPL mode.
```

## Usage

Usually, Use Gauss-Legendre Algorithm, use the function below.

```julia
julia> using CalcPi

julia> CalcPi.gauss_legendre(BigInt(10000))

3.14159265358979311120035621508437779160333415473350005136581079848894037301245
```

Another choice, Use Leibniz formula for π, use the function below.

```julia
julia> using CalcPi

julia> CalcPi.leibniz(BigInt(10000))

3.141692643590543213460768320877940222544825752138710733999805489190209879980251
```

## Test

```julia
pkg> test 
```

## Explanation of implementation

### The Gauss–Legendre algorithm

The Gauss–Legendre algorithm is an algorithm to compute the digits of π. 

It is notable for being rapidly convergent, with only 25 iterations producing 45 million correct digits of π.

However, the drawback is that it is computer memory-intensive and therefore sometimes Machin-like formulas are used instead.

The method is based on the individual work of Carl Friedrich Gauss (1777–1855) and Adrien-Marie Legendre (1752–1833) combined with modern algorithms for multiplication and square roots. 

It repeatedly replaces two numbers by their arithmetic and geometric mean, in order to approximate their arithmetic-geometric mean.

The version presented below is also known as the Gauss–Euler, Brent–Salamin (or Salamin–Brent) algorithm, it was independently discovered in 1975 by Richard Brent and Eugene Salamin. 

It was used to compute the first 206,158,430,000 decimal digits of π on September 18 to 20, 1999, and the results were checked with Borwein's algorithm.

[(Quote: Wikipedia)](https://en.wikipedia.org/wiki/Gauss%E2%80%93Legendre_algorithm)

#### Algorithm

##### Set the initial value

![a_0 = 1](https://latex.codecogs.com/png.latex?a_0&space;=&space;1)

![b_0 = \frac{1}{\sqrt{2}}](https://latex.codecogs.com/png.latex?b_0&space;=&space;\frac{1}{\sqrt{2}})

![t_0 = \frac{1}{4}](https://latex.codecogs.com/png.latex?t_0&space;=&space;\frac{1}{4})

![p_0 = 1](https://latex.codecogs.com/png.latex?p_0&space;=&space;1)

##### Iterative
Repeat the following calculations until a and b have the desired precision (number of digits).
When calculating to the nth decimal place, it may be repeated log2(n) times.

![a_{n+1} = \frac{a_n + b_n}{2}](https://latex.codecogs.com/png.latex?a_{n&plus;1}&space;=&space;\frac{a_n&space;&plus;&space;b_n}{2})

![b_{n+1} = \sqrt{a_n b_n}](https://latex.codecogs.com/png.latex?b_{n&plus;1}&space;=&space;\sqrt{a_n&space;b_n})

![t_{n+1} = t_n - p_n(a_n - a_{n+1})^2](https://latex.codecogs.com/png.latex?t_{n&plus;1}&space;=&space;t_n&space;-&space;p_n(a_n&space;-&space;a_{n&plus;1})^2)

![p_{n+1} = 2p_n](https://latex.codecogs.com/png.latex?p_{n&plus;1}&space;=&space;2p_n)

##### π calculation

Circumference π can be approximated using a, b, t as follows.

![\Pi \approx \frac{(a + b)^2}{4t}](https://latex.codecogs.com/png.latex?\Pi&space;\approx&space;\frac{(a&space;&plus;&space;b)^2}{4t})

### Leibniz formula for π

In mathematics, the Leibniz formula for π, named after Gottfried Leibniz, that state:

![1 - \frac{1}{3} + \frac{1}{5} - \frac{1}{7} + \frac{1}{9} - \cdots = \frac{\pi}{4}](https://latex.codecogs.com/png.latex?1&space;-&space;\frac{1}{3}&space;&plus;&space;\frac{1}{5}&space;-&space;\frac{1}{7}&space;&plus;&space;\frac{1}{9}&space;-&space;\cdots&space;=&space;\frac{\pi}{4})

This means that the cross term series where the first term is 1 and each term is an odd reciprocal converges to π / 4 (= 0.785398…).

Using the summation symbol:

![\sum_{n=0}^ \infty \frac{(-1)^n}{2n + 1} = \frac{\pi}{4}](https://latex.codecogs.com/png.latex?\sum_{n=0}^&space;\infty&space;\frac{(-1)^n}{2n&space;&plus;&space;1}&space;=&space;\frac{\pi}{4})

[Quote: Wikipedia](https://en.wikipedia.org/wiki/Leibniz_formula_for_%CF%80)
