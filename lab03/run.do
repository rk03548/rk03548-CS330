vlog tb.v MUX.v
vsim -novopt work.tb
view wave
add wave \
{sim:/tb/select } 
add wave \
{sim:/tb/input_b[0] } 
add wave \
{sim:/tb/input_a[0] }
add wave \
{sim:/tb/out[0] }
run 300ns