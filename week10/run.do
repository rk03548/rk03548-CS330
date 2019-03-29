vlog tb.v RISC_V_Processor.v adder.v ALU_64_bit.v ALU_Control.v Conrol_Unit.v Data_Memory.v IDG.v InstructionMemory.v InstructionParser.v MUX.v Program_Counter.v registerFile.v

vsim -novopt work.tb

add wave \
{sim:/tb/clk } \
{sim:/tb/reset } 
add wave \
{sim:/tb/Processor/RF/RS1 } \
{sim:/tb/Processor/RF/RS2 } \
{sim:/tb/Processor/RF/RD } \
{sim:/tb/Processor/RF/ReadData1 } \
{sim:/tb/Processor/RF/ReadData2 } 
add wave \
{sim:/tb/Processor/DM/Mem_Addr } \
{sim:/tb/Processor/DM/WriteData } \
{sim:/tb/Processor/DM/Read_Data } 

run 3000ns