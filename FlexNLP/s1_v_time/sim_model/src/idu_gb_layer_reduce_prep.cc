#include <flex.h>
bool flex::decode_GB_LAYER_REDUCE_gb_layer_reduce_prep() {
sc_biguint<1> local_var_1 = 1;
bool local_var_2 = (flex_gb_layer_reduce_child_valid_flag == local_var_1);
sc_biguint<3> local_var_4 = 0;
bool local_var_5 = (flex_gb_layer_reduce_child_state == local_var_4);
bool local_var_6 = (local_var_2 & local_var_5);
auto& univ_var_744 = local_var_6;
return univ_var_744;
}
void flex::update_GB_LAYER_REDUCE_gb_layer_reduce_prep() {
sc_biguint<3> local_var_0 = 2;
auto local_var_0_nxt_holder = local_var_0;
sc_biguint<16> local_var_1 = 0;
auto local_var_1_nxt_holder = local_var_1;
flex_gb_layer_reduce_child_state = local_var_0_nxt_holder;
GB_LAYER_REDUCE_gb_layer_reduce_timestep_cntr = local_var_1_nxt_holder;
}
