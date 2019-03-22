vlog ALU_Control.v ALU_Control_tb.v

vsim -novopt work.ALU_Control_tb

add wave \
{sim:/ALU_Control_tb/ALUOp } \
{sim:/ALU_Control_tb/Funct } \
{sim:/ALU_Control_tb/Operation } 

run 2400ns