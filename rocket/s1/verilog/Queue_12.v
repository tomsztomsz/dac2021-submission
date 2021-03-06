module Queue_12( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33282.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33283.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33284.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input  [2:0]  io_enq_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input  [2:0]  io_enq_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input  [3:0]  io_enq_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input  [3:0]  io_enq_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input  [31:0] io_enq_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input         io_enq_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input         io_enq_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input         io_enq_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input         io_enq_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input         io_enq_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input         io_enq_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input         io_enq_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input  [3:0]  io_enq_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input  [31:0] io_enq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input         io_enq_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output [2:0]  io_deq_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output [2:0]  io_deq_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output [3:0]  io_deq_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output [3:0]  io_deq_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output [31:0] io_deq_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output        io_deq_bits_user_amba_prot_bufferable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output        io_deq_bits_user_amba_prot_modifiable, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output        io_deq_bits_user_amba_prot_readalloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output        io_deq_bits_user_amba_prot_writealloc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output        io_deq_bits_user_amba_prot_privileged, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output        io_deq_bits_user_amba_prot_secure, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output        io_deq_bits_user_amba_prot_fetch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output [3:0]  io_deq_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output [31:0] io_deq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
  output        io_deq_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33285.4]
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] ram_opcode [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire [2:0] ram_opcode__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_opcode__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire [2:0] ram_opcode__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_opcode__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_opcode__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_opcode__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  reg [2:0] ram_param [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire [2:0] ram_param__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_param__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire [2:0] ram_param__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_param__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_param__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_param__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  reg [3:0] ram_size [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire [3:0] ram_size__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_size__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire [3:0] ram_size__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_size__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_size__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_size__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  reg [3:0] ram_source [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire [3:0] ram_source__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_source__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire [3:0] ram_source__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_source__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_source__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_source__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  reg [31:0] ram_address [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire [31:0] ram_address__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_address__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire [31:0] ram_address__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_address__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_address__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_address__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  reg  ram_user_amba_prot_bufferable [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_bufferable__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_bufferable__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_bufferable__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_bufferable__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_bufferable__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_bufferable__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  reg  ram_user_amba_prot_modifiable [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_modifiable__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_modifiable__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_modifiable__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_modifiable__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_modifiable__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_modifiable__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  reg  ram_user_amba_prot_readalloc [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_readalloc__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_readalloc__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_readalloc__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_readalloc__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_readalloc__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_readalloc__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  reg  ram_user_amba_prot_writealloc [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_writealloc__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_writealloc__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_writealloc__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_writealloc__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_writealloc__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_writealloc__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  reg  ram_user_amba_prot_privileged [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_privileged__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_privileged__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_privileged__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_privileged__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_privileged__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_privileged__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  reg  ram_user_amba_prot_secure [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_secure__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_secure__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_secure__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_secure__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_secure__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_secure__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  reg  ram_user_amba_prot_fetch [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_fetch__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_fetch__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_fetch__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_fetch__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_fetch__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_user_amba_prot_fetch__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  reg [3:0] ram_mask [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire [3:0] ram_mask__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_mask__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire [3:0] ram_mask__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_mask__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_mask__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_mask__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  reg [31:0] ram_data [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire [31:0] ram_data__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_data__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire [31:0] ram_data__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_data__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_data__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_data__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  reg  ram_corrupt [0:1]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_corrupt__T_15_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_corrupt__T_15_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_corrupt__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_corrupt__T_5_addr; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_corrupt__T_5_mask; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  wire  ram_corrupt__T_5_en; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  reg  _T; // @[Counter.scala 29:33:freechips.rocketchip.system.DefaultRV32Config.fir@33288.4]
  reg  _T_1; // @[Counter.scala 29:33:freechips.rocketchip.system.DefaultRV32Config.fir@33289.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@33290.4]
  wire  ptr_match; // @[Decoupled.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@33291.4]
  wire  _T_2; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@33292.4]
  wire  empty; // @[Decoupled.scala 215:25:freechips.rocketchip.system.DefaultRV32Config.fir@33293.4]
  wire  full; // @[Decoupled.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@33294.4]
  wire  do_enq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@33295.4]
  wire  do_deq; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@33298.4]
  wire  _T_8; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@33320.6]
  wire  _T_11; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@33326.6]
  wire  _T_12; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@33329.4]
  assign ram_opcode__T_15_addr = _T_1;
  assign ram_opcode__T_15_data = ram_opcode[ram_opcode__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  assign ram_opcode__T_5_data = io_enq_bits_opcode;
  assign ram_opcode__T_5_addr = _T;
  assign ram_opcode__T_5_mask = 1'h1;
  assign ram_opcode__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_param__T_15_addr = _T_1;
  assign ram_param__T_15_data = ram_param[ram_param__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  assign ram_param__T_5_data = io_enq_bits_param;
  assign ram_param__T_5_addr = _T;
  assign ram_param__T_5_mask = 1'h1;
  assign ram_param__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_size__T_15_addr = _T_1;
  assign ram_size__T_15_data = ram_size[ram_size__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  assign ram_size__T_5_data = io_enq_bits_size;
  assign ram_size__T_5_addr = _T;
  assign ram_size__T_5_mask = 1'h1;
  assign ram_size__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_source__T_15_addr = _T_1;
  assign ram_source__T_15_data = ram_source[ram_source__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  assign ram_source__T_5_data = io_enq_bits_source;
  assign ram_source__T_5_addr = _T;
  assign ram_source__T_5_mask = 1'h1;
  assign ram_source__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_address__T_15_addr = _T_1;
  assign ram_address__T_15_data = ram_address[ram_address__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  assign ram_address__T_5_data = io_enq_bits_address;
  assign ram_address__T_5_addr = _T;
  assign ram_address__T_5_mask = 1'h1;
  assign ram_address__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_user_amba_prot_bufferable__T_15_addr = _T_1;
  assign ram_user_amba_prot_bufferable__T_15_data = ram_user_amba_prot_bufferable[ram_user_amba_prot_bufferable__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  assign ram_user_amba_prot_bufferable__T_5_data = io_enq_bits_user_amba_prot_bufferable;
  assign ram_user_amba_prot_bufferable__T_5_addr = _T;
  assign ram_user_amba_prot_bufferable__T_5_mask = 1'h1;
  assign ram_user_amba_prot_bufferable__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_user_amba_prot_modifiable__T_15_addr = _T_1;
  assign ram_user_amba_prot_modifiable__T_15_data = ram_user_amba_prot_modifiable[ram_user_amba_prot_modifiable__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  assign ram_user_amba_prot_modifiable__T_5_data = io_enq_bits_user_amba_prot_modifiable;
  assign ram_user_amba_prot_modifiable__T_5_addr = _T;
  assign ram_user_amba_prot_modifiable__T_5_mask = 1'h1;
  assign ram_user_amba_prot_modifiable__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_user_amba_prot_readalloc__T_15_addr = _T_1;
  assign ram_user_amba_prot_readalloc__T_15_data = ram_user_amba_prot_readalloc[ram_user_amba_prot_readalloc__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  assign ram_user_amba_prot_readalloc__T_5_data = io_enq_bits_user_amba_prot_readalloc;
  assign ram_user_amba_prot_readalloc__T_5_addr = _T;
  assign ram_user_amba_prot_readalloc__T_5_mask = 1'h1;
  assign ram_user_amba_prot_readalloc__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_user_amba_prot_writealloc__T_15_addr = _T_1;
  assign ram_user_amba_prot_writealloc__T_15_data = ram_user_amba_prot_writealloc[ram_user_amba_prot_writealloc__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  assign ram_user_amba_prot_writealloc__T_5_data = io_enq_bits_user_amba_prot_writealloc;
  assign ram_user_amba_prot_writealloc__T_5_addr = _T;
  assign ram_user_amba_prot_writealloc__T_5_mask = 1'h1;
  assign ram_user_amba_prot_writealloc__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_user_amba_prot_privileged__T_15_addr = _T_1;
  assign ram_user_amba_prot_privileged__T_15_data = ram_user_amba_prot_privileged[ram_user_amba_prot_privileged__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  assign ram_user_amba_prot_privileged__T_5_data = io_enq_bits_user_amba_prot_privileged;
  assign ram_user_amba_prot_privileged__T_5_addr = _T;
  assign ram_user_amba_prot_privileged__T_5_mask = 1'h1;
  assign ram_user_amba_prot_privileged__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_user_amba_prot_secure__T_15_addr = _T_1;
  assign ram_user_amba_prot_secure__T_15_data = ram_user_amba_prot_secure[ram_user_amba_prot_secure__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  assign ram_user_amba_prot_secure__T_5_data = io_enq_bits_user_amba_prot_secure;
  assign ram_user_amba_prot_secure__T_5_addr = _T;
  assign ram_user_amba_prot_secure__T_5_mask = 1'h1;
  assign ram_user_amba_prot_secure__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_user_amba_prot_fetch__T_15_addr = _T_1;
  assign ram_user_amba_prot_fetch__T_15_data = ram_user_amba_prot_fetch[ram_user_amba_prot_fetch__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  assign ram_user_amba_prot_fetch__T_5_data = io_enq_bits_user_amba_prot_fetch;
  assign ram_user_amba_prot_fetch__T_5_addr = _T;
  assign ram_user_amba_prot_fetch__T_5_mask = 1'h1;
  assign ram_user_amba_prot_fetch__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_mask__T_15_addr = _T_1;
  assign ram_mask__T_15_data = ram_mask[ram_mask__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  assign ram_mask__T_5_data = io_enq_bits_mask;
  assign ram_mask__T_5_addr = _T;
  assign ram_mask__T_5_mask = 1'h1;
  assign ram_mask__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_data__T_15_addr = _T_1;
  assign ram_data__T_15_data = ram_data[ram_data__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  assign ram_data__T_5_data = io_enq_bits_data;
  assign ram_data__T_5_addr = _T;
  assign ram_data__T_5_mask = 1'h1;
  assign ram_data__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_corrupt__T_15_addr = _T_1;
  assign ram_corrupt__T_15_data = ram_corrupt[ram_corrupt__T_15_addr]; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
  assign ram_corrupt__T_5_data = io_enq_bits_corrupt;
  assign ram_corrupt__T_5_addr = _T;
  assign ram_corrupt__T_5_mask = 1'h1;
  assign ram_corrupt__T_5_en = io_enq_ready & io_enq_valid;
  assign ptr_match = _T == _T_1; // @[Decoupled.scala 214:33:freechips.rocketchip.system.DefaultRV32Config.fir@33291.4]
  assign _T_2 = ~maybe_full; // @[Decoupled.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@33292.4]
  assign empty = ptr_match & _T_2; // @[Decoupled.scala 215:25:freechips.rocketchip.system.DefaultRV32Config.fir@33293.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:freechips.rocketchip.system.DefaultRV32Config.fir@33294.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@33295.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@33298.4]
  assign _T_8 = _T + 1'h1; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@33320.6]
  assign _T_11 = _T_1 + 1'h1; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@33326.6]
  assign _T_12 = do_enq != do_deq; // @[Decoupled.scala 227:16:freechips.rocketchip.system.DefaultRV32Config.fir@33329.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:freechips.rocketchip.system.DefaultRV32Config.fir@33336.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:freechips.rocketchip.system.DefaultRV32Config.fir@33334.4]
  assign io_deq_bits_opcode = ram_opcode__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@33352.4]
  assign io_deq_bits_param = ram_param__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@33351.4]
  assign io_deq_bits_size = ram_size__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@33350.4]
  assign io_deq_bits_source = ram_source__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@33349.4]
  assign io_deq_bits_address = ram_address__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@33348.4]
  assign io_deq_bits_user_amba_prot_bufferable = ram_user_amba_prot_bufferable__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@33347.4]
  assign io_deq_bits_user_amba_prot_modifiable = ram_user_amba_prot_modifiable__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@33346.4]
  assign io_deq_bits_user_amba_prot_readalloc = ram_user_amba_prot_readalloc__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@33345.4]
  assign io_deq_bits_user_amba_prot_writealloc = ram_user_amba_prot_writealloc__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@33344.4]
  assign io_deq_bits_user_amba_prot_privileged = ram_user_amba_prot_privileged__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@33343.4]
  assign io_deq_bits_user_amba_prot_secure = ram_user_amba_prot_secure__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@33342.4]
  assign io_deq_bits_user_amba_prot_fetch = ram_user_amba_prot_fetch__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@33341.4]
  assign io_deq_bits_mask = ram_mask__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@33340.4]
  assign io_deq_bits_data = ram_data__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@33339.4]
  assign io_deq_bits_corrupt = ram_corrupt__T_15_data; // @[Decoupled.scala 233:15:freechips.rocketchip.system.DefaultRV32Config.fir@33338.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_opcode[initvar] = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_param[initvar] = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_size[initvar] = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_source[initvar] = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_address[initvar] = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_user_amba_prot_bufferable[initvar] = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_user_amba_prot_modifiable[initvar] = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_user_amba_prot_readalloc[initvar] = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_user_amba_prot_writealloc[initvar] = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_user_amba_prot_privileged[initvar] = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_user_amba_prot_secure[initvar] = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_user_amba_prot_fetch[initvar] = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_mask[initvar] = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_data[initvar] = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_corrupt[initvar] = _RAND_14[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  _T_1 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  maybe_full = _RAND_17[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_opcode__T_5_en & ram_opcode__T_5_mask) begin
      ram_opcode[ram_opcode__T_5_addr] <= ram_opcode__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
    end
    if(ram_param__T_5_en & ram_param__T_5_mask) begin
      ram_param[ram_param__T_5_addr] <= ram_param__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
    end
    if(ram_size__T_5_en & ram_size__T_5_mask) begin
      ram_size[ram_size__T_5_addr] <= ram_size__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
    end
    if(ram_source__T_5_en & ram_source__T_5_mask) begin
      ram_source[ram_source__T_5_addr] <= ram_source__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
    end
    if(ram_address__T_5_en & ram_address__T_5_mask) begin
      ram_address[ram_address__T_5_addr] <= ram_address__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
    end
    if(ram_user_amba_prot_bufferable__T_5_en & ram_user_amba_prot_bufferable__T_5_mask) begin
      ram_user_amba_prot_bufferable[ram_user_amba_prot_bufferable__T_5_addr] <= ram_user_amba_prot_bufferable__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
    end
    if(ram_user_amba_prot_modifiable__T_5_en & ram_user_amba_prot_modifiable__T_5_mask) begin
      ram_user_amba_prot_modifiable[ram_user_amba_prot_modifiable__T_5_addr] <= ram_user_amba_prot_modifiable__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
    end
    if(ram_user_amba_prot_readalloc__T_5_en & ram_user_amba_prot_readalloc__T_5_mask) begin
      ram_user_amba_prot_readalloc[ram_user_amba_prot_readalloc__T_5_addr] <= ram_user_amba_prot_readalloc__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
    end
    if(ram_user_amba_prot_writealloc__T_5_en & ram_user_amba_prot_writealloc__T_5_mask) begin
      ram_user_amba_prot_writealloc[ram_user_amba_prot_writealloc__T_5_addr] <= ram_user_amba_prot_writealloc__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
    end
    if(ram_user_amba_prot_privileged__T_5_en & ram_user_amba_prot_privileged__T_5_mask) begin
      ram_user_amba_prot_privileged[ram_user_amba_prot_privileged__T_5_addr] <= ram_user_amba_prot_privileged__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
    end
    if(ram_user_amba_prot_secure__T_5_en & ram_user_amba_prot_secure__T_5_mask) begin
      ram_user_amba_prot_secure[ram_user_amba_prot_secure__T_5_addr] <= ram_user_amba_prot_secure__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
    end
    if(ram_user_amba_prot_fetch__T_5_en & ram_user_amba_prot_fetch__T_5_mask) begin
      ram_user_amba_prot_fetch[ram_user_amba_prot_fetch__T_5_addr] <= ram_user_amba_prot_fetch__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
    end
    if(ram_mask__T_5_en & ram_mask__T_5_mask) begin
      ram_mask[ram_mask__T_5_addr] <= ram_mask__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
    end
    if(ram_data__T_5_en & ram_data__T_5_mask) begin
      ram_data[ram_data__T_5_addr] <= ram_data__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
    end
    if(ram_corrupt__T_5_en & ram_corrupt__T_5_mask) begin
      ram_corrupt[ram_corrupt__T_5_addr] <= ram_corrupt__T_5_data; // @[Decoupled.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@33287.4]
    end
    if (reset) begin
      _T <= 1'h0;
    end else if (do_enq) begin
      _T <= _T_8;
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else if (do_deq) begin
      _T_1 <= _T_11;
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_12) begin
      maybe_full <= do_enq;
    end
  end
endmodule
