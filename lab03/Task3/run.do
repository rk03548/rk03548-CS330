vlog IDG.v IDGTestbench.v

vsim -novopt work.tb

view wave

add wave \
{sim:/tb/instruction } \
{sim:/tb/imm_data }

run 1000ns