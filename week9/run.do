vlog ALU_Control.v Conrol_Unit.v top.v tb.v

vsim -novopt work.tb

add wave \
{sim:/tb/Opcode } \
{sim:/tb/Branch } \
{sim:/tb/MemWrite } \
{sim:/tb/MemRead } \
{sim:/tb/RegWrite } \
{sim:/tb/MemtoReg } \
{sim:/tb/ALUSrc } \
{sim:/tb/Funct } \
{sim:/tb/Operation }

run 3000ns