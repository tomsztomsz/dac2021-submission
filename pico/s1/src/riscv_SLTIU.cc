#include "riscv.h"
void riscv::decode_riscv_SLTIU_update() {
  c_4753 = (riscv_pc + 4);
  riscv_pc_next = c_4753;
  riscv_x0_next = 0;
  uint5_t tmp_17 = 0 - 1;
  c_17 = static_cast<uint5_t> ((riscv_inst >> 7) & tmp_17);
  c_5117 = c_17 == 1;
  uint5_t tmp_19 = 0 - 1;
  c_19 = static_cast<uint5_t> ((riscv_inst >> 15) & tmp_19);
  c_4744 = c_19 == 31;
  c_4739 = c_19 == 30;
  c_4734 = c_19 == 29;
  c_4729 = c_19 == 28;
  c_4724 = c_19 == 27;
  c_4719 = c_19 == 26;
  c_4714 = c_19 == 25;
  c_4709 = c_19 == 24;
  c_4704 = c_19 == 23;
  c_4699 = c_19 == 22;
  c_4694 = c_19 == 21;
  c_4689 = c_19 == 20;
  c_4684 = c_19 == 19;
  c_4679 = c_19 == 18;
  c_4674 = c_19 == 17;
  c_4669 = c_19 == 16;
  c_4664 = c_19 == 15;
  c_4659 = c_19 == 14;
  c_4654 = c_19 == 13;
  c_4649 = c_19 == 12;
  c_4644 = c_19 == 11;
  c_4639 = c_19 == 10;
  c_4634 = c_19 == 9;
  c_4629 = c_19 == 8;
  c_4624 = c_19 == 7;
  c_4619 = c_19 == 6;
  c_4614 = c_19 == 5;
  c_4609 = c_19 == 4;
  c_4604 = c_19 == 3;
  c_4599 = c_19 == 2;
  c_4594 = c_19 == 1;
  c_4596 = (c_4594) ? riscv_x1 : 0;
  c_4601 = (c_4599) ? riscv_x2 : c_4596;
  c_4606 = (c_4604) ? riscv_x3 : c_4601;
  c_4611 = (c_4609) ? riscv_x4 : c_4606;
  c_4616 = (c_4614) ? riscv_x5 : c_4611;
  c_4621 = (c_4619) ? riscv_x6 : c_4616;
  c_4626 = (c_4624) ? riscv_x7 : c_4621;
  c_4631 = (c_4629) ? riscv_x8 : c_4626;
  c_4636 = (c_4634) ? riscv_x9 : c_4631;
  c_4641 = (c_4639) ? riscv_x10 : c_4636;
  c_4646 = (c_4644) ? riscv_x11 : c_4641;
  c_4651 = (c_4649) ? riscv_x12 : c_4646;
  c_4656 = (c_4654) ? riscv_x13 : c_4651;
  c_4661 = (c_4659) ? riscv_x14 : c_4656;
  c_4666 = (c_4664) ? riscv_x15 : c_4661;
  c_4671 = (c_4669) ? riscv_x16 : c_4666;
  c_4676 = (c_4674) ? riscv_x17 : c_4671;
  c_4681 = (c_4679) ? riscv_x18 : c_4676;
  c_4686 = (c_4684) ? riscv_x19 : c_4681;
  c_4691 = (c_4689) ? riscv_x20 : c_4686;
  c_4696 = (c_4694) ? riscv_x21 : c_4691;
  c_4701 = (c_4699) ? riscv_x22 : c_4696;
  c_4706 = (c_4704) ? riscv_x23 : c_4701;
  c_4711 = (c_4709) ? riscv_x24 : c_4706;
  c_4716 = (c_4714) ? riscv_x25 : c_4711;
  c_4721 = (c_4719) ? riscv_x26 : c_4716;
  c_4726 = (c_4724) ? riscv_x27 : c_4721;
  c_4731 = (c_4729) ? riscv_x28 : c_4726;
  c_4736 = (c_4734) ? riscv_x29 : c_4731;
  c_4741 = (c_4739) ? riscv_x30 : c_4736;
  c_4746 = (c_4744) ? riscv_x31 : c_4741;
  uint12_t tmp_29 = 0 - 1;
  c_29 = static_cast<uint12_t> ((riscv_inst >> 20) & tmp_29);
  c_31 = static_cast<uint32_t>(c_29);
  c_31 = (c_29 >> 11) ? static_cast<uint32_t>(~c_29) : static_cast<uint32_t>(c_29);
  c_31 = (c_29 >> 11) ? (~c_31) : c_31;
  c_5110 = c_4746 < c_31;
  c_5112 = (c_5110) ? 1 : 0;
  c_5119 = (c_5117) ? c_5112 : riscv_x1;
  riscv_x1_next = c_5119;
  c_5162 = c_17 == 10;
  c_5164 = (c_5162) ? c_5112 : riscv_x10;
  riscv_x10_next = c_5164;
  c_5167 = c_17 == 11;
  c_5169 = (c_5167) ? c_5112 : riscv_x11;
  riscv_x11_next = c_5169;
  c_5172 = c_17 == 12;
  c_5174 = (c_5172) ? c_5112 : riscv_x12;
  riscv_x12_next = c_5174;
  c_5177 = c_17 == 13;
  c_5179 = (c_5177) ? c_5112 : riscv_x13;
  riscv_x13_next = c_5179;
  c_5182 = c_17 == 14;
  c_5184 = (c_5182) ? c_5112 : riscv_x14;
  riscv_x14_next = c_5184;
  c_5187 = c_17 == 15;
  c_5189 = (c_5187) ? c_5112 : riscv_x15;
  riscv_x15_next = c_5189;
  c_5192 = c_17 == 16;
  c_5194 = (c_5192) ? c_5112 : riscv_x16;
  riscv_x16_next = c_5194;
  c_5197 = c_17 == 17;
  c_5199 = (c_5197) ? c_5112 : riscv_x17;
  riscv_x17_next = c_5199;
  c_5202 = c_17 == 18;
  c_5204 = (c_5202) ? c_5112 : riscv_x18;
  riscv_x18_next = c_5204;
  c_5207 = c_17 == 19;
  c_5209 = (c_5207) ? c_5112 : riscv_x19;
  riscv_x19_next = c_5209;
  c_5122 = c_17 == 2;
  c_5124 = (c_5122) ? c_5112 : riscv_x2;
  riscv_x2_next = c_5124;
  c_5212 = c_17 == 20;
  c_5214 = (c_5212) ? c_5112 : riscv_x20;
  riscv_x20_next = c_5214;
  c_5217 = c_17 == 21;
  c_5219 = (c_5217) ? c_5112 : riscv_x21;
  riscv_x21_next = c_5219;
  c_5222 = c_17 == 22;
  c_5224 = (c_5222) ? c_5112 : riscv_x22;
  riscv_x22_next = c_5224;
  c_5227 = c_17 == 23;
  c_5229 = (c_5227) ? c_5112 : riscv_x23;
  riscv_x23_next = c_5229;
  c_5232 = c_17 == 24;
  c_5234 = (c_5232) ? c_5112 : riscv_x24;
  riscv_x24_next = c_5234;
  c_5237 = c_17 == 25;
  c_5239 = (c_5237) ? c_5112 : riscv_x25;
  riscv_x25_next = c_5239;
  c_5242 = c_17 == 26;
  c_5244 = (c_5242) ? c_5112 : riscv_x26;
  riscv_x26_next = c_5244;
  c_5247 = c_17 == 27;
  c_5249 = (c_5247) ? c_5112 : riscv_x27;
  riscv_x27_next = c_5249;
  c_5252 = c_17 == 28;
  c_5254 = (c_5252) ? c_5112 : riscv_x28;
  riscv_x28_next = c_5254;
  c_5257 = c_17 == 29;
  c_5259 = (c_5257) ? c_5112 : riscv_x29;
  riscv_x29_next = c_5259;
  c_5127 = c_17 == 3;
  c_5129 = (c_5127) ? c_5112 : riscv_x3;
  riscv_x3_next = c_5129;
  c_5262 = c_17 == 30;
  c_5264 = (c_5262) ? c_5112 : riscv_x30;
  riscv_x30_next = c_5264;
  c_5267 = c_17 == 31;
  c_5269 = (c_5267) ? c_5112 : riscv_x31;
  riscv_x31_next = c_5269;
  c_5132 = c_17 == 4;
  c_5134 = (c_5132) ? c_5112 : riscv_x4;
  riscv_x4_next = c_5134;
  c_5137 = c_17 == 5;
  c_5139 = (c_5137) ? c_5112 : riscv_x5;
  riscv_x5_next = c_5139;
  c_5142 = c_17 == 6;
  c_5144 = (c_5142) ? c_5112 : riscv_x6;
  riscv_x6_next = c_5144;
  c_5147 = c_17 == 7;
  c_5149 = (c_5147) ? c_5112 : riscv_x7;
  riscv_x7_next = c_5149;
  c_5152 = c_17 == 8;
  c_5154 = (c_5152) ? c_5112 : riscv_x8;
  riscv_x8_next = c_5154;
  c_5157 = c_17 == 9;
  c_5159 = (c_5157) ? c_5112 : riscv_x9;
  riscv_x9_next = c_5159;
};
