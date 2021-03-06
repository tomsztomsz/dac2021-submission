// Include Ilated Model
#include "riscv_ila.h"

// Include Verilated Impl

// Include library
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <fstream>
#include <iostream>
#include <chrono>


class Ilated;
class RTLVerilated;
// Decl
bool end_of_instr(RTLVerilated* v, uint32_t& fq) {
  if (v->v_top->picorv32_simple->reg_pc != v->prev_pc) {
    fq = v->mem[v->prev_pc / 4];
    return 1;
  } else
    return 0;
}
bool v_ready(RTLVerilated* v) {
  return v->v_top->picorv32_simple->mem_valid && 
         (v->v_top->picorv32_simple->mem_wstrb == 0) && 
         v->v_top->picorv32_simple->mem_instr;
}
bool v_read(RTLVerilated* v) {
  return v->v_top->picorv32_simple->mem_valid && 
         (v->v_top->picorv32_simple->mem_wstrb == 0) && 
         (!v->v_top->picorv32_simple->mem_instr);
}

void v_input(RTLVerilated* v, uint32_t test_input) {
  v->v_top->mem_ready = 1;
  v->v_top->mem_rdata = test_input;
  return;
}

void v_store(RTLVerilated* v, std::map<uint32_t, uint32_t>& store_trace) {
  if (v->v_top->picorv32_simple->mem_valid && 
      (v->v_top->picorv32_simple->mem_wstrb != 0)) {
    uint32_t addr = v->v_top->picorv32_simple->mem_addr / 4;
    uint32_t data = v->v_top->picorv32_simple->mem_wdata;
    store_trace[addr] = data;
    uint32_t origin_data = v->mem[addr];
    if (v->v_top->picorv32_simple->mem_wstrb == 1) {
      origin_data = (origin_data >> 8) << 8; 
      data = (data << 24) >> 24;
      store_trace[addr] = origin_data + data; 
    } else if (v->v_top->picorv32_simple->mem_wstrb == 3) {
      origin_data = (origin_data >> 16) << 16; 
      data = (data << 16) >> 16;
      store_trace[addr] = origin_data + data; 
    } else if (v->v_top->picorv32_simple->mem_wstrb == 15) {
      store_trace[addr] = data;
    } else {
      std::cout << "Error store" << std::endl;
    }
  }
}

void i_input(Ilated* i, uint32_t test_input) {
  i->i_top->riscv_inst = test_input;
  return;
}
void swap(Ilated* i, RTLVerilated* v) {
  i->tandem_swap(v);
}
void next_cycle(RTLVerilated* v) {
  v->v_top->clk = 0;
  v->v_top->eval();
  v->v_top->clk = 1;
  v->v_top->eval();
  return;
}
void next_instr(Ilated* i) {
  i->i_top->compute(); 
}
void check_state(Ilated* i, RTLVerilated* v, std::map<uint32_t, uint32_t>& store_trace) {
  // Incomplete
  if (v->v_top->picorv32_simple->dbg_reg_x0 != i->i_top->riscv_x0)
    std::cout << "Error x0" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x1 != i->i_top->riscv_x1)
    std::cout << "Error x1" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x2 != i->i_top->riscv_x2)
    std::cout << "Error x2" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x3 != i->i_top->riscv_x3)
    std::cout << "Error x3" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x4 != i->i_top->riscv_x4)
    std::cout << "Error x4" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x5 != i->i_top->riscv_x5)
    std::cout << "Error x5" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x6 != i->i_top->riscv_x6)
    std::cout << "Error x6" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x7 != i->i_top->riscv_x7)
    std::cout << "Error x7" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x8 != i->i_top->riscv_x8)
    std::cout << "Error x8" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x9 != i->i_top->riscv_x9)
    std::cout << "Error x9" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x10 != i->i_top->riscv_x10)
    std::cout << "Error x10" << v->v_top->picorv32_simple->dbg_reg_x10 << ":"
              << i->i_top->riscv_x10 << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x11 != i->i_top->riscv_x11)
    std::cout << "Error x11" << v->v_top->picorv32_simple->dbg_reg_x11 << ":"
              << i->i_top->riscv_x11 << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x12 != i->i_top->riscv_x12)
    std::cout << "Error x12" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x13 != i->i_top->riscv_x13)
    std::cout << "Error x13" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x14 != i->i_top->riscv_x14)
    std::cout << "Error x14" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x15 != i->i_top->riscv_x15)
    std::cout << "Error x15" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x16 != i->i_top->riscv_x16)
    std::cout << "Error x16" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x17 != i->i_top->riscv_x17)
    std::cout << "Error x17" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x18 != i->i_top->riscv_x18)
    std::cout << "Error x18" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x19 != i->i_top->riscv_x19)
    std::cout << "Error x19" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x20 != i->i_top->riscv_x20)
    std::cout << "Error x20" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x21 != i->i_top->riscv_x21)
    std::cout << "Error x21" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x22 != i->i_top->riscv_x22)
    std::cout << "Error x22" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x23 != i->i_top->riscv_x23)
    std::cout << "Error x23" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x24 != i->i_top->riscv_x24)
    std::cout << "Error x24" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x25 != i->i_top->riscv_x25)
    std::cout << "Error x25" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x26 != i->i_top->riscv_x26)
    std::cout << "Error x26" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x27 != i->i_top->riscv_x27)
    std::cout << "Error x27" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x28 != i->i_top->riscv_x28)
    std::cout << "Error x28" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x29 != i->i_top->riscv_x29)
    std::cout << "Error x29" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x30 != i->i_top->riscv_x30)
    std::cout << "Error x30" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x31 != i->i_top->riscv_x31)
    std::cout << "Error x31" << std::endl;
  if (v->v_top->picorv32_simple->reg_pc != i->i_top->riscv_pc)
    std::cout << "Error pc" << v->v_top->picorv32_simple->reg_pc <<
                 ":" << i->i_top->riscv_pc << std::endl;


  for (auto it : store_trace) {
    if (i->i_top->riscv_mem_next.update_map.find(it.first) == 
        i->i_top->riscv_mem_next.update_map.end()) 
      std::cout << "Error st addr" << it.first << std::endl; 
    else {
      if (i->i_top->riscv_mem_next.update_map[it.first] !=
          it.second) 
        std::cout << "Error st data" << it.first << " " << it.second 
                  << std::endl;
    }
  } 
  if ((i->i_top->riscv_mem_next.original_map != i->i_top->riscv_mem)
      && (!store_trace.empty()))
    std::cout << "Error original map" << std::endl;
  return;
}


int main(int argc, char **argv) {
  bool tandem_enable = (argc > 2);
  std::istringstream argv_3(argv[2]);
  uint32_t swap_time;
  argv_3 >> swap_time;  
  // Instantiate Model -- i
  Ilated* i = new Ilated;
  // Initialize Model -- i 
  i->i_top->riscv_x1 = 1;

  // Instantiate Implementation -- v
  RTLVerilated* v = new RTLVerilated;
  // Initialize Implementation -- v
  v->v_top->resetn = 0;
  next_cycle(v);
  next_cycle(v);
  v->v_top->resetn = 1;
  next_cycle(v);
  next_cycle(v);
  next_cycle(v);
  next_cycle(v);
  next_cycle(v);
  next_cycle(v);
  next_cycle(v);
  next_cycle(v);
  v->v_top->picorv32_simple->cpuregs[1] = 1;
  // tmps
  
  if (argc < 2) 
    std::cout << "Need test-vector input." << std::endl;
  std::ifstream tv_file;
  tv_file.open(argv[1]);
  
  std::string tv_input;
  uint32_t tv_end = 0;
  int j = 0;
  while (getline(tv_file, tv_input)) {
    uint32_t tmp = (std::stoul(tv_input, 0, 16));
    v->mem[j] = tmp;
    i->i_top->riscv_mem[j++] = tmp;
    tv_end++;
  }
  tv_end = tv_end * 4;
  uint32_t fq;
  std::map<uint32_t, uint32_t> store_trace;
  
  long long int duration;
  while (i->i_top->riscv_pc < swap_time) {
    auto test_input = v->mem[i->i_top->riscv_pc / 4];
    i_input(i, test_input);
    next_instr(i);
  }  
  auto timer1 = std::chrono::high_resolution_clock::now();
  swap(i, v);
  auto timer2 = std::chrono::high_resolution_clock::now();
  while((v->v_top->picorv32_simple->reg_pc != tv_end)) {
    if (v->v_top->picorv32_simple->reg_pc != tv_end) {
      if (v_ready(v)) {
        auto test_input = v->mem[v->v_top->picorv32_simple->mem_addr / 4];
        v_input(v, test_input);
      } else if (v_read(v)) {
        auto data_input = v->mem[v->v_top->picorv32_simple->mem_addr / 4];
        v_input(v, data_input);
      } 
    }
    v_store(v, store_trace);
    v->prev_pc = v->v_top->picorv32_simple->reg_pc;
    next_cycle(v);   
    if (tandem_enable) {
      if (end_of_instr(v, fq)) {
        auto test_input = fq;
        i_input(i, test_input);
        next_instr(i);
        check_state(i, v, store_trace);
      } 
    }
  }
  duration = std::chrono::duration_cast<std::chrono::nanoseconds>( timer2 - timer1 ).count();
  std::cout << "duration: " << duration << std::endl;
}  
  
  

