vlog tb.v Data_Memory.v

vsim -novopt work.tb

view wave

add wave \
{sim:/tb/Mem_Addr } \
{sim:/tb/WriteData } \
{sim:/tb/clk } \
{sim:/tb/memWrite } \
{sim:/tb/memRead } \
{sim:/tb/Read_Data }

run 1000ns