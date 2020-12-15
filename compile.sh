rm -rf .Aa
mkdir .Aa
# preprocess.
AaPreprocess -I src/  src/main.aa -o src/mvp.aa
# link
AaLinkExtMem src/mvp.aa | vcFormat > .Aa/mvp.linked.aa 
# aa2c model.
TOPMODULES="-T mvp_daemon"

rm -rf aa2c
mkdir aa2c
Aa2C $TOPMODULES .Aa/mvp.linked.aa  -o aa2c/
#
# optimize
#
AaOpt -B .Aa/mvp.linked.aa  | vcFormat > .Aa/mvp.opt.aa
#
# to virtual circuit.
#
rm -rf .vC/
mkdir .vC/
Aa2VC -O -C .Aa/mvp.opt.aa | vcFormat > .vC/mvp.vc
#
# to VHDL
#
rm -rf vhdl/
mkdir vhdl/
vc2vhdl -U  -O -v -a -C -e ahir_system -w -s ghdl $TOPMODULES -f .vC/mvp.vc
vhdlFormat < ahir_system_global_package.unformatted_vhdl > vhdl/ahir_system_global_package.vhdl
vhdlFormat < ahir_system.unformatted_vhdl > vhdl/ahir_system.vhdl
vhdlFormat < ahir_system_test_bench.unformatted_vhdl > vhdl/ahir_system_test_bench.vhdl
rm -f *.unformatted_vhdl


