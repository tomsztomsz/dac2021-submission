#include "AES.h"
#ifdef TANDEM_VERIFICATION
void AES::check_aes_status(RTLVerilated* v) {
  if (AES_aes_status != v->v_top->aes_top->aes_reg_state)
    throw AESException("aes_status unequal.");
}
void AES::check_aes_address(RTLVerilated* v) {
  if (AES_aes_address != v->v_top->aes_top->aes_reg_opaddr_i->reg_out)
    throw AESException("aes_address unequal.");
}
void AES::check_aes_length(RTLVerilated* v) {
  if (AES_aes_length != v->v_top->aes_top->aes_reg_oplen_i->reg_out)
    throw AESException("aes_length unequal.");
}
void AES::check_aes_counter(RTLVerilated* v) {
  if ((AES_aes_counter >> 0) % (1ll << 32) != v->v_top->aes_top->aes_reg_ctr_i->reg_out[0])
    throw AESException("aes_counter unequal.");
  if ((AES_aes_counter >> 32) % (1ll << 32) != v->v_top->aes_top->aes_reg_ctr_i->reg_out[1])
    throw AESException("aes_counter unequal.");
  if ((AES_aes_counter >> 64) % (1ll << 32) != v->v_top->aes_top->aes_reg_ctr_i->reg_out[2])
    throw AESException("aes_counter unequal.");
  if ((AES_aes_counter >> 96) % (1ll << 32) != v->v_top->aes_top->aes_reg_ctr_i->reg_out[3])
    throw AESException("aes_counter unequal.");
}
void AES::check_aes_key(RTLVerilated* v) {
  if ((AES_aes_key >> 0) % (1ll << 32) != v->v_top->aes_top->aes_reg_key0_i->reg_out[0])
    throw AESException("aes_key unequal.");
  if ((AES_aes_key >> 32) % (1ll << 32) != v->v_top->aes_top->aes_reg_key0_i->reg_out[1])
    throw AESException("aes_key unequal.");
  if ((AES_aes_key >> 64) % (1ll << 32) != v->v_top->aes_top->aes_reg_key0_i->reg_out[2])
    throw AESException("aes_key unequal.");
  if ((AES_aes_key >> 96) % (1ll << 32) != v->v_top->aes_top->aes_reg_key0_i->reg_out[3])
    throw AESException("aes_key unequal.");
}
void AES::check_outdata(RTLVerilated* v) {
  if (AES_outdata != v->v_top->aes_top->data_out_reg)
    throw AESException("outdata unequal.");
}
void AES::check_XRAM(RTLVerilated* v) {
  for (std::map<uint32_t, uint8_t>::iterator it = tandem_XRAM_map.begin(); it != tandem_XRAM_map.end(); it++) {
    if (v->v_top->aes_top->xram[it->first] != it->second)
      throw AESException("XRAM unequal.");
  }
}
void AES::tandem_instr_WRITE_ADDRESS(RTLVerilated* v) {
  check_aes_address(v);
  check_aes_counter(v);
  check_aes_key(v);
  check_aes_length(v);
}
void AES::tandem_instr_START_ENCRYPT(RTLVerilated* v) {
  check_aes_status(v);
  check_XRAM(v);
}
void AES::tandem_instr_READ_LENGTH(RTLVerilated* v) {
  check_aes_address(v);
  check_aes_key(v);
  check_aes_length(v);
  check_outdata(v);
}
void AES::tandem_instr_READ_ADDRESS(RTLVerilated* v) {
  check_aes_address(v);
  check_aes_key(v);
  check_aes_length(v);
  check_outdata(v);
}
void AES::tandem_instr_READ_KEY(RTLVerilated* v) {
  check_aes_address(v);
  check_aes_key(v);
  check_aes_length(v);
  check_outdata(v);
}
void AES::tandem_instr_READ_COUNTER(RTLVerilated* v) {
  check_aes_address(v);
  check_aes_key(v);
  check_aes_length(v);
  check_outdata(v);
}
void AES::tandem_instr_GET_STATUS(RTLVerilated* v) {
  check_aes_address(v);
  check_aes_key(v);
  check_aes_length(v);
  check_outdata(v);
}
void AES::tandem_instr_WRITE_LENGTH(RTLVerilated* v) {
  check_aes_address(v);
  check_aes_counter(v);
  check_aes_key(v);
  check_aes_length(v);
  check_aes_status(v);
}
void AES::tandem_instr_WRITE_KEY(RTLVerilated* v) {
  check_aes_address(v);
  check_aes_counter(v);
  check_aes_key(v);
  check_aes_length(v);
}
void AES::tandem_instr_WRITE_COUNTER(RTLVerilated* v) {
  check_aes_address(v);
  check_aes_counter(v);
  check_aes_key(v);
}
void AES::tandem_swap(RTLVerilated* v) {
  v->v_top->aes_top->aes_reg_state = (uint32_t) AES_aes_status;
  v->v_top->aes_top->aes_reg_opaddr_i->reg_out = AES_aes_address;
  v->v_top->aes_top->aes_reg_oplen_i->reg_out = AES_aes_length;
  v->v_top->aes_top->aes_reg_ctr_i->reg_out[0] = (uint32_t)(AES_aes_counter >> 0) % (1ll << 32);
  v->v_top->aes_top->aes_reg_ctr_i->reg_out[1] = (uint32_t)(AES_aes_counter >> 32) % (1ll << 32);
  v->v_top->aes_top->aes_reg_ctr_i->reg_out[2] = (uint32_t)(AES_aes_counter >> 64) % (1ll << 32);
  v->v_top->aes_top->aes_reg_ctr_i->reg_out[3] = (uint32_t)(AES_aes_counter >> 96) % (1ll << 32);
  v->v_top->aes_top->aes_reg_key0_i->reg_out[0] = (uint32_t)(AES_aes_key >> 0) % (1ll << 32);
  v->v_top->aes_top->aes_reg_key0_i->reg_out[1] = (uint32_t)(AES_aes_key >> 32) % (1ll << 32);
  v->v_top->aes_top->aes_reg_key0_i->reg_out[2] = (uint32_t)(AES_aes_key >> 64) % (1ll << 32);
  v->v_top->aes_top->aes_reg_key0_i->reg_out[3] = (uint32_t)(AES_aes_key >> 96) % (1ll << 32);
  v->v_top->aes_top->data_out_reg = AES_outdata;
  for (int i = 0; i < 65536; i++) {
    v->v_top->aes_top->xram[i] = AES_XRAM[i];
  }
}
#endif