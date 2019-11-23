using CalcPi
usin DocOpt

doc = """Calc pi...

Usage:
  calc_pi.jl gauss_legendre <times> [-d|--debug]

Options:
  times         Iteration times
  -h --help     Show this screen.
  --version     Show version.
  -d --debug    Show calculation process.

"""

args = docopt(doc, version=v"1.9.0")

if args["gauss_legendre"]
    CalcPi.gauss_legendre(parse(BigInt, args["<times>"]), args["--debug"])

