vlog tb.v RISC_V_Processor.v adder.v ALU_64_bit.v ALU_Control.v Conrol_Unit.v Data_Memory.v IDG.v InstructionMemory.v InstructionParser.v MUX.v Program_Counter.v registerFile.v

vsim -novopt work.tb

add wave \
{sim:/tb/Processor/RF/WriteData } \
{sim:/tb/Processor/RF/RS1 } \
{sim:/tb/Processor/RF/RS2 } \
{sim:/tb/Processor/RF/RD } \
{sim:/tb/Processor/RF/RegWrite } \
{sim:/tb/Processor/RF/clk } \
{sim:/tb/Processor/RF/reset } \
{sim:/tb/Processor/RF/ReadData1 } \
{sim:/tb/Processor/RF/ReadData2 } \
{sim:/tb/Processor/RF/Registers }

add wave \
{sim:/tb/Processor/DM/bytes }

run 3500ns