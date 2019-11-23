module CalcPi

#=
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

a_{n+1} =
=#
function gauss_legendre(n::BigInt, debug=false)
    local a::BigFloat = 1.0
    local b::BigFloat = 1.0 / sqrt(2.0)
    local t::BigFloat = 1.0 / 4
    local p::BigFloat = 1.0
    local tmp::BigFloat = 0

    for i in 0:n
        tmp = a
        a = (tmp + b) / 2
        b = sqrt(tmp * b)
        t = t - (p * (a - tmp) * (a - tmp))
        p = 2 * p
        if debug
            if i % 100000 == 0
                print(".")
                if i % 10000000 == 0
                    print("\n")
                end
            end
        end
    end
    print("\n")
    return (a + b) * (a + b) / (4 * t)
end

end # module
