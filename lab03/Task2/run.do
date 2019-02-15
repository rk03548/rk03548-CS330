#compiling design modules
vlog InstructionParser.v testbench.v

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Adding waves
add wave \
{sim:/tb/instruction } \
{sim:/tb/opcode } \
{sim:/tb/rd } \
{sim:/tb/funct3 } \
{sim:/tb/rs1 } \
{sim:/tb/rs2 } \
{sim:/tb/funct7 } 

run 300ns