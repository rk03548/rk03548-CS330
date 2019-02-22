vlog tb.v top.v ALU_1_BIT.v

vsim -novopt work.tb

add wave \
{sim:/tb/a } \
{sim:/tb/b } \
{sim:/tb/CarryIn } \
{sim:/tb/ALUOp } \
{sim:/tb/Result } \
{sim:/tb/CarryOut6 } 

run 1600ns