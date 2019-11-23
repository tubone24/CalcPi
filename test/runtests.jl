using Test, CalcPi

@test CalcPi.gauss_legendre(BigInt(1000)) > 3.141
