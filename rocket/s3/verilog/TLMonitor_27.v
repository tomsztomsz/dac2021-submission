module TLMonitor_27( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66757.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66758.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66759.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
  input  [2:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
  input  [1:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
  input  [31:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
  input  [2:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
  input  [1:0]  io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
  input         io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
  input         io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@66760.4]
);
`ifdef RANDOMIZE_REG_INIT
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
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@68047.4]
  wire [12:0] _T_14; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@66783.6]
  wire [5:0] _T_16; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@66785.6]
  wire [31:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@66786.6]
  wire [31:0] _T_17; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@66786.6]
  wire  _T_18; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@66787.6]
  wire [1:0] _T_21; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@66790.6]
  wire [1:0] _T_23; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@66792.6]
  wire  _T_24; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@66793.6]
  wire  _T_27; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@66796.6]
  wire  _T_29; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@66798.6]
  wire  _T_30; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@66799.6]
  wire  _T_32; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@66801.6]
  wire  _T_33; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@66802.6]
  wire  _T_36; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@66805.6]
  wire  _T_37; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@66806.6]
  wire  _T_38; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@66807.6]
  wire  _T_39; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@66808.6]
  wire  _T_40; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@66809.6]
  wire  _T_41; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@66810.6]
  wire  _T_42; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@66811.6]
  wire  _T_43; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@66812.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@66813.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@66814.6]
  wire  _T_46; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@66815.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@66816.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@66817.6]
  wire [3:0] _T_51; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@66820.6]
  wire  _T_70; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@66843.6]
  wire [31:0] _T_72; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@66846.8]
  wire [32:0] _T_73; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@66847.8]
  wire [32:0] _T_75; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@66849.8]
  wire  _T_76; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@66850.8]
  wire  _T_81; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66855.8]
  wire  _T_90; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66876.8]
  wire  _T_91; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66877.8]
  wire  _T_93; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66883.8]
  wire  _T_94; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66884.8]
  wire  _T_95; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@66889.8]
  wire  _T_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66891.8]
  wire  _T_98; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66892.8]
  wire [3:0] _T_99; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@66897.8]
  wire  _T_100; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@66898.8]
  wire  _T_102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66900.8]
  wire  _T_103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66901.8]
  wire  _T_104; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@66906.8]
  wire  _T_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66908.8]
  wire  _T_107; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66909.8]
  wire  _T_108; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@66915.6]
  wire  _T_137; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@66969.8]
  wire  _T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66971.8]
  wire  _T_140; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66972.8]
  wire  _T_150; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@66995.6]
  wire  _T_152; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@66998.8]
  wire  _T_160; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@67006.8]
  wire  _T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67009.8]
  wire  _T_164; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67010.8]
  wire  _T_171; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@67029.8]
  wire  _T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67031.8]
  wire  _T_174; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67032.8]
  wire  _T_175; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@67037.8]
  wire  _T_177; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67039.8]
  wire  _T_178; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67040.8]
  wire  _T_183; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@67054.6]
  wire  _T_212; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@67105.6]
  wire [3:0] _T_237; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@67147.8]
  wire [3:0] _T_238; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@67148.8]
  wire  _T_239; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@67149.8]
  wire  _T_241; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67151.8]
  wire  _T_242; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67152.8]
  wire  _T_243; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@67158.6]
  wire  _T_261; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@67189.8]
  wire  _T_263; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67191.8]
  wire  _T_264; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67192.8]
  wire  _T_269; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@67206.6]
  wire  _T_287; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@67237.8]
  wire  _T_289; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67239.8]
  wire  _T_290; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67240.8]
  wire  _T_295; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@67254.6]
  wire  _T_313; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@67285.8]
  wire  _T_315; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67287.8]
  wire  _T_316; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67288.8]
  wire  _T_325; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@67312.6]
  wire  _T_327; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67314.6]
  wire  _T_328; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67315.6]
  wire  _T_339; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@67332.6]
  wire  _T_343; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@67341.8]
  wire  _T_345; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67343.8]
  wire  _T_346; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67344.8]
  wire  _T_351; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@67357.8]
  wire  _T_353; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67359.8]
  wire  _T_354; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67360.8]
  wire  _T_355; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@67365.8]
  wire  _T_357; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67367.8]
  wire  _T_358; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67368.8]
  wire  _T_359; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@67374.6]
  wire  _T_387; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@67432.6]
  wire  _T_407; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@67473.8]
  wire  _T_409; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67475.8]
  wire  _T_410; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67476.8]
  wire  _T_416; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@67491.6]
  wire  _T_433; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@67526.6]
  wire  _T_451; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@67562.6]
  wire  _T_483; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@67628.4]
  wire  _T_490; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@67635.4]
  reg [3:0] _T_492; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@67637.4]
  wire [3:0] _T_494; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@67639.4]
  wire  _T_495; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@67640.4]
  reg [2:0] _T_503; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@67651.4]
  reg [2:0] _T_504; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@67652.4]
  reg [2:0] _T_505; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@67653.4]
  reg [1:0] _T_506; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@67654.4]
  reg [31:0] _T_507; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@67655.4]
  wire  _T_508; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@67656.4]
  wire  _T_509; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@67657.4]
  wire  _T_510; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@67659.6]
  wire  _T_512; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67661.6]
  wire  _T_513; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67662.6]
  wire  _T_514; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@67667.6]
  wire  _T_516; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67669.6]
  wire  _T_517; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67670.6]
  wire  _T_518; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@67675.6]
  wire  _T_520; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67677.6]
  wire  _T_521; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67678.6]
  wire  _T_522; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@67683.6]
  wire  _T_524; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67685.6]
  wire  _T_525; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67686.6]
  wire  _T_526; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@67691.6]
  wire  _T_528; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67693.6]
  wire  _T_529; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67694.6]
  wire  _T_531; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@67701.4]
  wire  _T_532; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@67709.4]
  wire [12:0] _T_534; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@67711.4]
  wire [5:0] _T_536; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@67713.4]
  reg [3:0] _T_540; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@67717.4]
  wire [3:0] _T_542; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@67719.4]
  wire  _T_543; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@67720.4]
  reg [2:0] _T_551; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@67731.4]
  reg [2:0] _T_553; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@67733.4]
  reg [1:0] _T_554; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@67734.4]
  reg  _T_556; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@67736.4]
  wire  _T_557; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@67737.4]
  wire  _T_558; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@67738.4]
  wire  _T_559; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@67740.6]
  wire  _T_561; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67742.6]
  wire  _T_562; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67743.6]
  wire  _T_567; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@67756.6]
  wire  _T_569; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67758.6]
  wire  _T_570; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67759.6]
  wire  _T_571; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@67764.6]
  wire  _T_573; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67766.6]
  wire  _T_574; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67767.6]
  wire  _T_579; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@67780.6]
  wire  _T_581; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67782.6]
  wire  _T_582; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67783.6]
  wire  _T_584; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@67790.4]
  reg [3:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@67799.4]
  reg [15:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@67800.4]
  reg [15:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@67801.4]
  reg [3:0] _T_594; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@67811.4]
  wire [3:0] _T_596; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@67813.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@67814.4]
  reg [3:0] _T_612; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@67833.4]
  wire [3:0] _T_614; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@67835.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@67836.4]
  wire [3:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@67855.4]
  wire [4:0] _T_622; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@67855.4]
  wire [15:0] _T_623; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@67856.4]
  wire [15:0] _T_627; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@67860.4]
  wire [15:0] _T_628; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@67861.4]
  wire [15:0] _T_629; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@67862.4]
  wire [15:0] _T_631; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@67867.4]
  wire [15:0] _T_636; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@67872.4]
  wire [15:0] _T_637; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@67873.4]
  wire  _T_641; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@67898.4]
  wire [3:0] _T_643; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@67901.6]
  wire [3:0] _T_644; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@67903.6]
  wire [3:0] _T_645; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@67904.6]
  wire [3:0] _T_646; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@67906.6]
  wire [3:0] _T_647; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@67907.6]
  wire [3:0] _GEN_61; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@67909.6]
  wire [4:0] _T_648; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@67909.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@67900.4]
  wire [34:0] _GEN_62; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@67910.6]
  wire [34:0] _T_649; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@67910.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@67900.4]
  wire [34:0] _GEN_64; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@67913.6]
  wire [34:0] _T_651; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@67913.6]
  wire [3:0] _T_652; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@67915.6]
  wire  _T_654; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@67917.6]
  wire  _T_656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67919.6]
  wire  _T_657; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67920.6]
  wire [3:0] a_set; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@67900.4]
  wire [34:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@67900.4]
  wire [34:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@67900.4]
  wire  _T_660; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@67934.4]
  wire  _T_662; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@67936.4]
  wire  _T_663; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@67937.4]
  wire [3:0] _T_664; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@67939.6]
  wire [46:0] _GEN_66; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@67946.6]
  wire [46:0] _T_670; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@67946.6]
  wire [3:0] d_clr; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@67938.4]
  wire [46:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@67938.4]
  wire  _T_677; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@67956.4]
  wire  _T_680; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@67959.4]
  wire [3:0] _T_681; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@67961.6]
  wire  _T_683; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@67963.6]
  wire  _T_684; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@67964.6]
  wire  _T_685; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@67965.6]
  wire  _T_686; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@67966.6]
  wire  _T_687; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@67967.6]
  wire  _T_688; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@67968.6]
  wire  _T_690; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67970.6]
  wire  _T_691; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67971.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@67853.4 :freechips.rocketchip.system.DefaultRV32Config.fir@67854.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@67863.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@67977.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@67977.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@67977.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@67977.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@67977.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@67977.6]
  wire  _T_693; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@67977.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@67979.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@67979.6]
  wire  _T_695; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@67979.6]
  wire  _T_696; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@67980.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@67981.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@67981.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@67981.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@67981.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@67981.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@67981.6]
  wire  _T_697; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@67981.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@67982.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@67982.6]
  wire  _T_698; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@67982.6]
  wire  _T_699; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@67983.6]
  wire  _T_700; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@67984.6]
  wire  _T_701; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@67985.6]
  wire  _T_703; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67987.6]
  wire  _T_704; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67988.6]
  wire [3:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@67864.4 :freechips.rocketchip.system.DefaultRV32Config.fir@67865.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@67874.4]
  wire [3:0] _GEN_69; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@67993.6]
  wire  _T_705; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@67993.6]
  wire  _T_707; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@67995.6]
  wire  _T_708; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@67996.6]
  wire  _T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67998.6]
  wire  _T_711; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67999.6]
  wire  _T_713; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@68006.4]
  wire  _T_714; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@68007.4]
  wire  _T_716; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@68009.4]
  wire  _T_718; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@68011.4]
  wire  _T_719; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@68013.6]
  wire  _T_720; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@68014.6]
  wire  _T_722; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@68016.6]
  wire  _T_723; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@68017.6]
  wire  _T_724; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@68023.4]
  wire  _T_725; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@68024.4]
  wire  _T_726; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@68025.4]
  wire  _T_727; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@68026.4]
  wire  _T_729; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@68028.4]
  wire  _T_730; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@68029.4]
  wire [3:0] _T_731; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@68034.4]
  wire [3:0] _T_732; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@68035.4]
  wire [3:0] _T_733; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@68036.4]
  wire [15:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@67849.4 :freechips.rocketchip.system.DefaultRV32Config.fir@67850.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@67911.6]
  wire [15:0] _T_734; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@68038.4]
  wire [15:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@67928.4 :freechips.rocketchip.system.DefaultRV32Config.fir@67929.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@67947.6]
  wire [15:0] _T_735; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@68039.4]
  wire [15:0] _T_736; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@68040.4]
  wire [15:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@67851.4 :freechips.rocketchip.system.DefaultRV32Config.fir@67852.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@67914.6]
  wire [15:0] _T_737; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@68042.4]
  wire [15:0] _T_739; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@68044.4]
  reg [31:0] _T_740; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@68046.4]
  wire  _T_741; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@68049.4]
  wire  _T_742; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@68050.4]
  wire  _T_743; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@68051.4]
  wire  _T_744; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@68052.4]
  wire  _T_745; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@68053.4]
  wire  _T_746; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@68054.4]
  wire  _T_748; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@68056.4]
  wire  _T_749; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@68057.4]
  wire [31:0] _T_751; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@68063.4]
  wire  _T_754; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@68067.4]
  wire  _GEN_70; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66857.10]
  wire  _GEN_84; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66929.10]
  wire  _GEN_100; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67012.10]
  wire  _GEN_110; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67071.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67122.10]
  wire  _GEN_126; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67172.10]
  wire  _GEN_134; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67220.10]
  wire  _GEN_142; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67268.10]
  wire  _GEN_152; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67346.10]
  wire  _GEN_158; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67387.10]
  wire  _GEN_164; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67445.10]
  wire  _GEN_170; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67513.10]
  wire  _GEN_172; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67549.10]
  wire  _GEN_174; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67584.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@68047.4]
    .out(plusarg_reader_out)
  );
  assign _T_14 = 13'h3f << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@66783.6]
  assign _T_16 = ~_T_14[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@66785.6]
  assign _GEN_56 = {{26'd0}, _T_16}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@66786.6]
  assign _T_17 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@66786.6]
  assign _T_18 = _T_17 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@66787.6]
  assign _T_21 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@66790.6]
  assign _T_23 = _T_21 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@66792.6]
  assign _T_24 = io_in_a_bits_size >= 3'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@66793.6]
  assign _T_27 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@66796.6]
  assign _T_29 = _T_23[1] & _T_27; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@66798.6]
  assign _T_30 = _T_24 | _T_29; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@66799.6]
  assign _T_32 = _T_23[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@66801.6]
  assign _T_33 = _T_24 | _T_32; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@66802.6]
  assign _T_36 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@66805.6]
  assign _T_37 = _T_27 & _T_36; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@66806.6]
  assign _T_38 = _T_23[0] & _T_37; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@66807.6]
  assign _T_39 = _T_30 | _T_38; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@66808.6]
  assign _T_40 = _T_27 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@66809.6]
  assign _T_41 = _T_23[0] & _T_40; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@66810.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@66811.6]
  assign _T_43 = io_in_a_bits_address[1] & _T_36; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@66812.6]
  assign _T_44 = _T_23[0] & _T_43; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@66813.6]
  assign _T_45 = _T_33 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@66814.6]
  assign _T_46 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@66815.6]
  assign _T_47 = _T_23[0] & _T_46; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@66816.6]
  assign _T_48 = _T_33 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@66817.6]
  assign _T_51 = {_T_48,_T_45,_T_42,_T_39}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@66820.6]
  assign _T_70 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@66843.6]
  assign _T_72 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@66846.8]
  assign _T_73 = {1'b0,$signed(_T_72)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@66847.8]
  assign _T_75 = $signed(_T_73) & -33'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@66849.8]
  assign _T_76 = $signed(_T_75) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@66850.8]
  assign _T_81 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66855.8]
  assign _T_90 = _T_24 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66876.8]
  assign _T_91 = ~_T_90; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66877.8]
  assign _T_93 = _T_18 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66883.8]
  assign _T_94 = ~_T_93; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66884.8]
  assign _T_95 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@66889.8]
  assign _T_97 = _T_95 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66891.8]
  assign _T_98 = ~_T_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66892.8]
  assign _T_99 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@66897.8]
  assign _T_100 = _T_99 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@66898.8]
  assign _T_102 = _T_100 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66900.8]
  assign _T_103 = ~_T_102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66901.8]
  assign _T_104 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@66906.8]
  assign _T_106 = _T_104 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66908.8]
  assign _T_107 = ~_T_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66909.8]
  assign _T_108 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@66915.6]
  assign _T_137 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@66969.8]
  assign _T_139 = _T_137 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66971.8]
  assign _T_140 = ~_T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66972.8]
  assign _T_150 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@66995.6]
  assign _T_152 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@66998.8]
  assign _T_160 = _T_152 & _T_76; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@67006.8]
  assign _T_163 = _T_160 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67009.8]
  assign _T_164 = ~_T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67010.8]
  assign _T_171 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@67029.8]
  assign _T_173 = _T_171 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67031.8]
  assign _T_174 = ~_T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67032.8]
  assign _T_175 = io_in_a_bits_mask == _T_51; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@67037.8]
  assign _T_177 = _T_175 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67039.8]
  assign _T_178 = ~_T_177; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67040.8]
  assign _T_183 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@67054.6]
  assign _T_212 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@67105.6]
  assign _T_237 = ~_T_51; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@67147.8]
  assign _T_238 = io_in_a_bits_mask & _T_237; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@67148.8]
  assign _T_239 = _T_238 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@67149.8]
  assign _T_241 = _T_239 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67151.8]
  assign _T_242 = ~_T_241; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67152.8]
  assign _T_243 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@67158.6]
  assign _T_261 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@67189.8]
  assign _T_263 = _T_261 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67191.8]
  assign _T_264 = ~_T_263; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67192.8]
  assign _T_269 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@67206.6]
  assign _T_287 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@67237.8]
  assign _T_289 = _T_287 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67239.8]
  assign _T_290 = ~_T_289; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67240.8]
  assign _T_295 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@67254.6]
  assign _T_313 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@67285.8]
  assign _T_315 = _T_313 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67287.8]
  assign _T_316 = ~_T_315; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67288.8]
  assign _T_325 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@67312.6]
  assign _T_327 = _T_325 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67314.6]
  assign _T_328 = ~_T_327; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67315.6]
  assign _T_339 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@67332.6]
  assign _T_343 = io_in_d_bits_size >= 3'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@67341.8]
  assign _T_345 = _T_343 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67343.8]
  assign _T_346 = ~_T_345; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67344.8]
  assign _T_351 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@67357.8]
  assign _T_353 = _T_351 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67359.8]
  assign _T_354 = ~_T_353; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67360.8]
  assign _T_355 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@67365.8]
  assign _T_357 = _T_355 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67367.8]
  assign _T_358 = ~_T_357; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67368.8]
  assign _T_359 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@67374.6]
  assign _T_387 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@67432.6]
  assign _T_407 = _T_355 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@67473.8]
  assign _T_409 = _T_407 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67475.8]
  assign _T_410 = ~_T_409; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67476.8]
  assign _T_416 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@67491.6]
  assign _T_433 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@67526.6]
  assign _T_451 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@67562.6]
  assign _T_483 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@67628.4]
  assign _T_490 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@67635.4]
  assign _T_494 = _T_492 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@67639.4]
  assign _T_495 = _T_492 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@67640.4]
  assign _T_508 = ~_T_495; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@67656.4]
  assign _T_509 = io_in_a_valid & _T_508; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@67657.4]
  assign _T_510 = io_in_a_bits_opcode == _T_503; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@67659.6]
  assign _T_512 = _T_510 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67661.6]
  assign _T_513 = ~_T_512; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67662.6]
  assign _T_514 = io_in_a_bits_param == _T_504; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@67667.6]
  assign _T_516 = _T_514 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67669.6]
  assign _T_517 = ~_T_516; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67670.6]
  assign _T_518 = io_in_a_bits_size == _T_505; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@67675.6]
  assign _T_520 = _T_518 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67677.6]
  assign _T_521 = ~_T_520; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67678.6]
  assign _T_522 = io_in_a_bits_source == _T_506; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@67683.6]
  assign _T_524 = _T_522 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67685.6]
  assign _T_525 = ~_T_524; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67686.6]
  assign _T_526 = io_in_a_bits_address == _T_507; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@67691.6]
  assign _T_528 = _T_526 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67693.6]
  assign _T_529 = ~_T_528; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67694.6]
  assign _T_531 = _T_483 & _T_495; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@67701.4]
  assign _T_532 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@67709.4]
  assign _T_534 = 13'h3f << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@67711.4]
  assign _T_536 = ~_T_534[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@67713.4]
  assign _T_542 = _T_540 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@67719.4]
  assign _T_543 = _T_540 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@67720.4]
  assign _T_557 = ~_T_543; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@67737.4]
  assign _T_558 = io_in_d_valid & _T_557; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@67738.4]
  assign _T_559 = io_in_d_bits_opcode == _T_551; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@67740.6]
  assign _T_561 = _T_559 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67742.6]
  assign _T_562 = ~_T_561; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67743.6]
  assign _T_567 = io_in_d_bits_size == _T_553; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@67756.6]
  assign _T_569 = _T_567 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67758.6]
  assign _T_570 = ~_T_569; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67759.6]
  assign _T_571 = io_in_d_bits_source == _T_554; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@67764.6]
  assign _T_573 = _T_571 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67766.6]
  assign _T_574 = ~_T_573; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67767.6]
  assign _T_579 = io_in_d_bits_denied == _T_556; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@67780.6]
  assign _T_581 = _T_579 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67782.6]
  assign _T_582 = ~_T_581; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67783.6]
  assign _T_584 = _T_532 & _T_543; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@67790.4]
  assign _T_596 = _T_594 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@67813.4]
  assign a_first = _T_594 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@67814.4]
  assign _T_614 = _T_612 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@67835.4]
  assign d_first = _T_612 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@67836.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@67855.4]
  assign _T_622 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@67855.4]
  assign _T_623 = inflight_opcodes >> _T_622; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@67856.4]
  assign _T_627 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@67860.4]
  assign _T_628 = _T_623 & _T_627; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@67861.4]
  assign _T_629 = {{1'd0}, _T_628[15:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@67862.4]
  assign _T_631 = inflight_sizes >> _T_622; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@67867.4]
  assign _T_636 = _T_631 & _T_627; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@67872.4]
  assign _T_637 = {{1'd0}, _T_636[15:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@67873.4]
  assign _T_641 = _T_483 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@67898.4]
  assign _T_643 = 4'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@67901.6]
  assign _T_644 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@67903.6]
  assign _T_645 = _T_644 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@67904.6]
  assign _T_646 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@67906.6]
  assign _T_647 = _T_646 | 4'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@67907.6]
  assign _GEN_61 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@67909.6]
  assign _T_648 = {{1'd0}, _GEN_61}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@67909.6]
  assign a_opcodes_set_interm = _T_641 ? _T_645 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@67900.4]
  assign _GEN_62 = {{31'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@67910.6]
  assign _T_649 = _GEN_62 << _T_648; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@67910.6]
  assign a_sizes_set_interm = _T_641 ? _T_647 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@67900.4]
  assign _GEN_64 = {{31'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@67913.6]
  assign _T_651 = _GEN_64 << _T_648; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@67913.6]
  assign _T_652 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@67915.6]
  assign _T_654 = ~_T_652[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@67917.6]
  assign _T_656 = _T_654 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67919.6]
  assign _T_657 = ~_T_656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67920.6]
  assign a_set = _T_641 ? _T_643 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@67900.4]
  assign _GEN_18 = _T_641 ? _T_649 : 35'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@67900.4]
  assign _GEN_19 = _T_641 ? _T_651 : 35'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@67900.4]
  assign _T_660 = _T_532 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@67934.4]
  assign _T_662 = ~_T_339; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@67936.4]
  assign _T_663 = _T_660 & _T_662; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@67937.4]
  assign _T_664 = 4'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@67939.6]
  assign _GEN_66 = {{31'd0}, _T_627}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@67946.6]
  assign _T_670 = _GEN_66 << _T_622; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@67946.6]
  assign d_clr = _T_663 ? _T_664 : 4'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@67938.4]
  assign _GEN_21 = _T_663 ? _T_670 : 47'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@67938.4]
  assign _T_677 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@67956.4]
  assign _T_680 = _T_677 & _T_662; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@67959.4]
  assign _T_681 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@67961.6]
  assign _T_683 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@67963.6]
  assign _T_684 = io_in_a_valid & _T_683; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@67964.6]
  assign _T_685 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@67965.6]
  assign _T_686 = _T_684 & _T_685; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@67966.6]
  assign _T_687 = _T_686 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@67967.6]
  assign _T_688 = _T_681[0] | _T_687; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@67968.6]
  assign _T_690 = _T_688 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67970.6]
  assign _T_691 = ~_T_690; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67971.6]
  assign a_opcode_lookup = _T_629[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@67853.4 :freechips.rocketchip.system.DefaultRV32Config.fir@67854.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@67863.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@67977.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@67977.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@67977.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@67977.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@67977.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@67977.6]
  assign _T_693 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@67977.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@67979.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@67979.6]
  assign _T_695 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@67979.6]
  assign _T_696 = _T_693 | _T_695; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@67980.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@67981.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@67981.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@67981.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@67981.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@67981.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@67981.6]
  assign _T_697 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@67981.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@67982.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@67982.6]
  assign _T_698 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@67982.6]
  assign _T_699 = _T_697 | _T_698; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@67983.6]
  assign _T_700 = io_in_a_valid & _T_699; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@67984.6]
  assign _T_701 = _T_696 | _T_700; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@67985.6]
  assign _T_703 = _T_701 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67987.6]
  assign _T_704 = ~_T_703; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67988.6]
  assign a_size_lookup = _T_637[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@67864.4 :freechips.rocketchip.system.DefaultRV32Config.fir@67865.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@67874.4]
  assign _GEN_69 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@67993.6]
  assign _T_705 = _GEN_69 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@67993.6]
  assign _T_707 = io_in_a_valid & _T_685; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@67995.6]
  assign _T_708 = _T_705 | _T_707; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@67996.6]
  assign _T_710 = _T_708 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67998.6]
  assign _T_711 = ~_T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67999.6]
  assign _T_713 = _T_677 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@68006.4]
  assign _T_714 = _T_713 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@68007.4]
  assign _T_716 = _T_714 & _T_683; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@68009.4]
  assign _T_718 = _T_716 & _T_662; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@68011.4]
  assign _T_719 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@68013.6]
  assign _T_720 = _T_719 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@68014.6]
  assign _T_722 = _T_720 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@68016.6]
  assign _T_723 = ~_T_722; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@68017.6]
  assign _T_724 = a_set != d_clr; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@68023.4]
  assign _T_725 = |a_set; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@68024.4]
  assign _T_726 = ~_T_725; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@68025.4]
  assign _T_727 = _T_724 | _T_726; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@68026.4]
  assign _T_729 = _T_727 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@68028.4]
  assign _T_730 = ~_T_729; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@68029.4]
  assign _T_731 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@68034.4]
  assign _T_732 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@68035.4]
  assign _T_733 = _T_731 & _T_732; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@68036.4]
  assign a_opcodes_set = _GEN_18[15:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@67849.4 :freechips.rocketchip.system.DefaultRV32Config.fir@67850.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@67911.6]
  assign _T_734 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@68038.4]
  assign d_opcodes_clr = _GEN_21[15:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@67928.4 :freechips.rocketchip.system.DefaultRV32Config.fir@67929.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@67947.6]
  assign _T_735 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@68039.4]
  assign _T_736 = _T_734 & _T_735; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@68040.4]
  assign a_sizes_set = _GEN_19[15:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@67851.4 :freechips.rocketchip.system.DefaultRV32Config.fir@67852.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@67914.6]
  assign _T_737 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@68042.4]
  assign _T_739 = _T_737 & _T_735; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@68044.4]
  assign _T_741 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@68049.4]
  assign _T_742 = ~_T_741; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@68050.4]
  assign _T_743 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@68051.4]
  assign _T_744 = _T_742 | _T_743; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@68052.4]
  assign _T_745 = _T_740 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@68053.4]
  assign _T_746 = _T_744 | _T_745; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@68054.4]
  assign _T_748 = _T_746 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@68056.4]
  assign _T_749 = ~_T_748; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@68057.4]
  assign _T_751 = _T_740 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@68063.4]
  assign _T_754 = _T_483 | _T_532; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@68067.4]
  assign _GEN_70 = io_in_a_valid & _T_70; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66857.10]
  assign _GEN_84 = io_in_a_valid & _T_108; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66929.10]
  assign _GEN_100 = io_in_a_valid & _T_150; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67012.10]
  assign _GEN_110 = io_in_a_valid & _T_183; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67071.10]
  assign _GEN_118 = io_in_a_valid & _T_212; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67122.10]
  assign _GEN_126 = io_in_a_valid & _T_243; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67172.10]
  assign _GEN_134 = io_in_a_valid & _T_269; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67220.10]
  assign _GEN_142 = io_in_a_valid & _T_295; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67268.10]
  assign _GEN_152 = io_in_d_valid & _T_339; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67346.10]
  assign _GEN_158 = io_in_d_valid & _T_359; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67387.10]
  assign _GEN_164 = io_in_d_valid & _T_387; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67445.10]
  assign _GEN_170 = io_in_d_valid & _T_416; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67513.10]
  assign _GEN_172 = io_in_d_valid & _T_433; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67549.10]
  assign _GEN_174 = io_in_d_valid & _T_451; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67584.10]
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
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_492 = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  _T_503 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_504 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_505 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  _T_506 = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  _T_507 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  _T_540 = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  _T_551 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  _T_553 = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  _T_554 = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  _T_556 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  inflight = _RAND_11[3:0];
  _RAND_12 = {1{`RANDOM}};
  inflight_opcodes = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  inflight_sizes = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  _T_594 = _RAND_14[3:0];
  _RAND_15 = {1{`RANDOM}};
  _T_612 = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  _T_740 = _RAND_16[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_492 <= 4'h0;
    end else if (_T_483) begin
      if (_T_495) begin
        if (_T_490) begin
          _T_492 <= _T_16[5:2];
        end else begin
          _T_492 <= 4'h0;
        end
      end else begin
        _T_492 <= _T_494;
      end
    end
    if (_T_531) begin
      _T_503 <= io_in_a_bits_opcode;
    end
    if (_T_531) begin
      _T_504 <= io_in_a_bits_param;
    end
    if (_T_531) begin
      _T_505 <= io_in_a_bits_size;
    end
    if (_T_531) begin
      _T_506 <= io_in_a_bits_source;
    end
    if (_T_531) begin
      _T_507 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_540 <= 4'h0;
    end else if (_T_532) begin
      if (_T_543) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_540 <= _T_536[5:2];
        end else begin
          _T_540 <= 4'h0;
        end
      end else begin
        _T_540 <= _T_542;
      end
    end
    if (_T_584) begin
      _T_551 <= io_in_d_bits_opcode;
    end
    if (_T_584) begin
      _T_553 <= io_in_d_bits_size;
    end
    if (_T_584) begin
      _T_554 <= io_in_d_bits_source;
    end
    if (_T_584) begin
      _T_556 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 4'h0;
    end else begin
      inflight <= _T_733;
    end
    if (reset) begin
      inflight_opcodes <= 16'h0;
    end else begin
      inflight_opcodes <= _T_736;
    end
    if (reset) begin
      inflight_sizes <= 16'h0;
    end else begin
      inflight_sizes <= _T_739;
    end
    if (reset) begin
      _T_594 <= 4'h0;
    end else if (_T_483) begin
      if (a_first) begin
        if (_T_490) begin
          _T_594 <= _T_16[5:2];
        end else begin
          _T_594 <= 4'h0;
        end
      end else begin
        _T_594 <= _T_596;
      end
    end
    if (reset) begin
      _T_612 <= 4'h0;
    end else if (_T_532) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_612 <= _T_536[5:2];
        end else begin
          _T_612 <= 4'h0;
        end
      end else begin
        _T_612 <= _T_614;
      end
    end
    if (reset) begin
      _T_740 <= 32'h0;
    end else if (_T_754) begin
      _T_740 <= 32'h0;
    end else begin
      _T_740 <= _T_751;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66857.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66858.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66864.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66865.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_91) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66879.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_91) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66880.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66886.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66887.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_98) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66894.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_98) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66895.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66903.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66904.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66911.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66912.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66929.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66930.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66936.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66937.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_91) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66951.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_91) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66952.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66958.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66959.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_98) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66966.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_98) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66967.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_140) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66974.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_140) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66975.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66983.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66984.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66991.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@66992.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67012.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67013.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67026.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67027.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_174) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67034.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_174) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67035.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67042.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67043.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67050.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67051.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_110 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67071.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_110 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67072.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_110 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67085.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_110 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67086.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_110 & _T_174) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67093.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_110 & _T_174) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67094.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_110 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67101.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_110 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67102.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67122.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67123.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67136.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67137.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_174) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67144.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_174) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67145.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_242) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67154.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_242) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67155.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_126 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67172.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_126 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67173.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_126 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67186.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_126 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67187.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_126 & _T_264) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67194.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_126 & _T_264) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67195.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_126 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67202.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_126 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67203.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67220.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67221.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67234.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67235.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_290) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67242.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_290) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67243.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67250.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67251.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_142 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67268.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_142 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67269.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_142 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67282.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_142 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67283.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_142 & _T_316) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67290.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_142 & _T_316) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67291.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_142 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67298.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_142 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67299.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_142 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67306.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_142 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67307.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_328) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67317.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_328) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67318.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_152 & _T_346) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67346.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_152 & _T_346) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67347.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_152 & _T_354) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67362.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_152 & _T_354) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67363.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_152 & _T_358) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67370.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_152 & _T_358) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67371.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67387.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_81) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67388.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_346) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67395.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_346) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67396.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_354) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67419.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_354) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67420.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67445.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_81) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67446.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_346) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67453.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_346) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67454.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_410) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67478.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_410) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67479.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_354) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67513.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_354) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67514.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_172 & _T_410) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67549.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_172 & _T_410) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67550.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_354) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67584.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_354) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67585.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_513) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67664.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_513) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67665.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_517) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67672.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_517) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67673.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_521) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67680.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_521) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67681.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_525) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67688.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_525) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67689.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_529) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67696.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_529) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67697.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_558 & _T_562) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67745.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_558 & _T_562) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67746.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_558 & _T_570) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67761.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_558 & _T_570) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67762.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_558 & _T_574) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67769.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_558 & _T_574) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67770.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_558 & _T_582) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67785.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_558 & _T_582) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67786.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_641 & _T_657) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67922.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_641 & _T_657) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@67923.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_680 & _T_691) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67973.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_680 & _T_691) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67974.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_680 & _T_704) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67990.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_680 & _T_704) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@67991.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_680 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@68001.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_680 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@68002.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_718 & _T_723) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@68019.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_718 & _T_723) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@68020.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_730) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 1 (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@68031.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_730) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@68032.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_749) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at MemoryBus.scala:44:30)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@68059.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_749) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@68060.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
