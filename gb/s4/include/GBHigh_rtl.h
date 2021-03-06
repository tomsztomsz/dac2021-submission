#include <Vhls_target.h>
#include <Vhls_target_hls_target.h>
#include <Vhls_target_FIFO_hls_target_p_p2_in_bounded_stencil_stream_s.h>
#include <Vhls_target_FIFO_hls_target_p_p2_in_bounded_stencil_stream_s_shiftReg.h> 
#include <Vhls_target_hls_target_linebuffer_1.h>
#include <Vhls_target_hls_target_linebuffer.h>
#include <Vhls_target_hls_target_call.h>
#include <Vhls_target_hls_target_call_Loop_LB2D_buf_proc.h>
#include <Vhls_target_hls_target_linebuffer_Loop_1_proc.h>
#include <Vhls_target_hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V__pi16.h>
#include <Vhls_target_hls_target_call_Loop_LB2D_buf_proc_buffer_0_value_V_ram.h>
#include <Vhls_target_hls_target_call_Loop_LB2D_shift_proc.h>
#include <Vhls_target_hls_target_Loop_1_proc.h>

class RTLVerilated {
public:
  Vhls_target *v_top;
  uint32_t *ref_stencils;
  RTLVerilated() {
    v_top = new Vhls_target("v_top");
    ref_stencils = NULL;
  }
  ~RTLVerilated() {}
};

class v_in {
public:
  bool arg_0_TREADY;  
  bool arg_1_TVALID;
  uint8_t arg_1_TDATA;
};
