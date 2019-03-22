vlog Conrol_Unit.v Control_Unit_tb.v

vsim -novopt work.Control_Unit_tb

add wave \
{sim:/Control_Unit_tb/Opcode } \
{sim:/Control_Unit_tb/Branch } \
{sim:/Control_Unit_tb/MemWrite } \
{sim:/Control_Unit_tb/MemRead } \
{sim:/Control_Unit_tb/RegWrite } \
{sim:/Control_Unit_tb/MemtoReg } \
{sim:/Control_Unit_tb/ALUSrc } \
{sim:/Control_Unit_tb/ALUOp }

run 2000ns