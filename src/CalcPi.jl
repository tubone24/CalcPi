module CalcPi

#=
The Gauss Legendre algolithm is a calculation algorithm with PI
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
            print("\n")
        end
    end
    return (a + b) * (a + b) / (4 * t)
end

function leibniz(n::BigInt, debug=false)
    ret::BigFloat = 0.0
    for i in 0:n
        ret += (-1)^i / (2i + 1)
        if debug
            if i % 100000 == 0
                print(".")
                if i % 10000000 == 0
                    print("\n")
                end
            end
            print("\n")
        end
    end
    return 4ret
end

end # module
