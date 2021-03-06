# CMakeLists.txt for flex
cmake_minimum_required(VERSION 3.14.0)
project(flex LANGUAGES CXX)
set( CMAKE_VERBOSE_MAKEFILE on )
set(CMAKE_C_COMPILER /usr/bin/gcc)
set(CMAKE_CXX_COMPILER /usr/bin/g++)
set(CMAKE_CXX_FLAGS -O3)
# set(CMAKE_CXX_FLAGS "-std=c++11")

# set(CMAKE_CXX_STANDARD 14)
# for server
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)


option(ILATOR_VERBOSE "Enable instruction sequence logging" OFF)
option(JSON_SUPPORT "Build JSON parser support" OFF)

set (CMAKE_PREFIX_PATH /opt/systemc/)
find_package(SystemCLanguage CONFIG REQUIRED)
# set(CMAKE_CXX_STANDARD ${SystemC_CXX_STANDARD})

aux_source_directory(extern extern_src)
add_executable(flex
  ${CMAKE_CURRENT_SOURCE_DIR}/app/main.cc
  ${extern_src}
  ${CMAKE_CURRENT_SOURCE_DIR}/src/compute.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/constant_memory_def.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_CONFIG_GB_ATTENTION.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_CONFIG_GB_CONTROL.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_CONFIG_GB_CORE_MEM_MNGR_LARGE.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_CONFIG_GB_CORE_MEM_MNGR_SMALL.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_CONFIG_GB_LAYER_NORM.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_CONFIG_GB_LAYER_REDUCE.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_CONFIG_GB_ZERO_PADDING.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_GB_ATTENTION_START.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_GB_CONTROL_START.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_GB_CORE_STORE_LARGE.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_GB_CORE_STORE_SMALL.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_GB_LAYER_NORM_START.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_GB_LAYER_REDUCE_START.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_GB_ZEROPADDING_START.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_ACT_STORE_BUFFER.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_CONFIG_ACT_MNGR.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_CONFIG_ACT_VECTOR_0_15.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_CONFIG_ACT_VECTOR_16_31.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_CONFIG_CLUSTER_TABLE_FIRST.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_CONFIG_CLUSTER_TABLE_SECOND.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_CONFIG_MEM_MNGR_FIRST.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_CONFIG_MEM_MNGR_SECOND.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_CONFIG_RNN_LAYER_SIZING.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_CORE_STORE_INPUT_BUFFER.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_CORE_STORE_WEIGHT_BUFFER.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_do_incr.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_fetch.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_initiate.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_op_copy.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_op_eadd.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_op_emul.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_op_inpe.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_op_load.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_op_load_zero.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_op_onex.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_op_outgb.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_op_relu.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_op_sigm.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_op_store.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_op_tanh.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_reg_store.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_act_child_send_done.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_bias.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_is_start.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_mac.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_out.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_prep.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_read_gb.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_data_c.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_data_nc.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_mul.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_0.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_1.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_10.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_11.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_12.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_13.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_14.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_15.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_2.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_3.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_4.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_5.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_6.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_7.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_8.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE0_core_run_mac_out_9.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_ACT_STORE_BUFFER.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_CONFIG_ACT_MNGR.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_CONFIG_ACT_VECTOR_0_15.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_CONFIG_ACT_VECTOR_16_31.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_CONFIG_CLUSTER_TABLE_FIRST.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_CONFIG_CLUSTER_TABLE_SECOND.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_CONFIG_MEM_MNGR_FIRST.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_CONFIG_MEM_MNGR_SECOND.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_CONFIG_RNN_LAYER_SIZING.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_CORE_STORE_INPUT_BUFFER.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_CORE_STORE_WEIGHT_BUFFER.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_do_incr.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_fetch.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_initiate.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_op_copy.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_op_eadd.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_op_emul.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_op_inpe.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_op_load.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_op_load_zero.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_op_onex.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_op_outgb.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_op_relu.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_op_sigm.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_op_store.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_op_tanh.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_reg_store.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_act_child_send_done.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_bias.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_is_start.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_mac.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_out.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_prep.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_read_gb.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_data_c.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_data_nc.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_mul.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_0.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_1.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_10.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_11.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_12.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_13.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_14.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_15.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_2.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_3.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_4.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_5.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_6.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_7.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_8.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE1_core_run_mac_out_9.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_ACT_STORE_BUFFER.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_CONFIG_ACT_MNGR.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_CONFIG_ACT_VECTOR_0_15.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_CONFIG_ACT_VECTOR_16_31.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_CONFIG_CLUSTER_TABLE_FIRST.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_CONFIG_CLUSTER_TABLE_SECOND.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_CONFIG_MEM_MNGR_FIRST.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_CONFIG_MEM_MNGR_SECOND.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_CONFIG_RNN_LAYER_SIZING.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_CORE_STORE_INPUT_BUFFER.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_CORE_STORE_WEIGHT_BUFFER.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_do_incr.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_fetch.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_initiate.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_op_copy.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_op_eadd.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_op_emul.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_op_inpe.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_op_load.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_op_load_zero.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_op_onex.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_op_outgb.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_op_relu.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_op_sigm.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_op_store.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_op_tanh.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_reg_store.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_act_child_send_done.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_bias.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_is_start.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_mac.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_out.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_prep.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_read_gb.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_data_c.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_data_nc.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_mul.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_0.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_1.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_10.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_11.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_12.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_13.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_14.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_15.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_2.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_3.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_4.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_5.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_6.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_7.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_8.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE2_core_run_mac_out_9.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_ACT_STORE_BUFFER.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_CONFIG_ACT_MNGR.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_CONFIG_ACT_VECTOR_0_15.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_CONFIG_ACT_VECTOR_16_31.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_CONFIG_CLUSTER_TABLE_FIRST.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_CONFIG_CLUSTER_TABLE_SECOND.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_CONFIG_MEM_MNGR_FIRST.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_CONFIG_MEM_MNGR_SECOND.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_CONFIG_RNN_LAYER_SIZING.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_CORE_STORE_INPUT_BUFFER.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_CORE_STORE_WEIGHT_BUFFER.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_do_incr.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_fetch.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_initiate.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_op_copy.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_op_eadd.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_op_emul.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_op_inpe.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_op_load.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_op_load_zero.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_op_onex.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_op_outgb.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_op_relu.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_op_sigm.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_op_store.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_op_tanh.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_reg_store.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_act_child_send_done.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_bias.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_is_start.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_mac.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_out.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_prep.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_read_gb.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_data_c.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_data_nc.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_mul.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_0.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_1.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_10.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_11.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_12.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_13.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_14.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_15.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_2.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_3.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_4.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_5.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_6.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_7.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_8.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_PE3_core_run_mac_out_9.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_child_bmm_mv.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_child_bmm_next.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_child_bmm_rd.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_child_bmm_tp.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_child_fin.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_child_idle.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_child_next_max.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_child_next_shift.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_child_next_wr.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_child_out1.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_child_out2.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_child_prep.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_child_sfm1_comp.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_child_sfm1_rd.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_sfm2_comp0.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_sfm2_comp1.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_sfm2_comp2.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_sfm2_comp3.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_sfm2_rd.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_attention_sfm3.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_control_child_next.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_control_child_pe_start.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_control_child_prep.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_control_child_recv.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_control_child_recv_next.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_control_child_send.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_control_child_send_back.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_control_child_send_back_prep.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_control_child_send_prep.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_layer_norm_child_next.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_layer_norm_mean_op.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_layer_norm_norm_byte_op.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_layer_norm_norm_vector_prep.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_layer_norm_sum_byte_op.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_layer_norm_sum_vector_level_prep.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_layer_norm_timestep_level_op.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_layer_reduce_byte_level_op.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_layer_reduce_done.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_layer_reduce_prep.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_layer_reduce_timestep_level_op.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_layer_reduce_vector_level_op.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_zero_padding_child_byte.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_zero_padding_child_prep.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_zero_padding_child_state_next.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_zero_padding_child_timestep.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/idu_gb_zero_padding_child_vector.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/memory_update_functions_0.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/memory_update_functions_1.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/memory_update_functions_2.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/memory_update_functions_3.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/memory_update_functions_4.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/memory_update_functions_5.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/memory_update_functions_6.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/memory_update_functions_7.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/src/setup_initial_condition.cc
)

target_include_directories(flex PRIVATE include)
target_link_libraries(flex SystemC::systemc)
if(${ILATOR_VERBOSE})
  target_compile_definitions(flex PRIVATE ILATOR_VERBOSE)
endif()
if(${JSON_SUPPORT})
  include(FetchContent)
  FetchContent_Declare(
    json
    GIT_REPOSITORY https://github.com/nlohmann/json.git
    GIT_TAG        v3.8.0
  )
  FetchContent_MakeAvailable(json)
  target_link_libraries(flex nlohmann_json::nlohmann_json)
endif()
