
// Copyright (c) 2024, Jay Shah, Ganesh Bikshandi, Ying Zhang, Vijay Thakkar, Pradeep Ramani, Tri Dao.
// Splitting the different head dimensions to different files to speed up compilation.

#include "flash_fwd_launch_template.h"

template<>
void run_mha_fwd_gqa_<cutlass::float_e4m3_t, 32, 64, 2>(Flash_fwd_params &params, cudaStream_t stream) {
    run_mha_fwd_qkdim32_vdim64_fp8_gqa<cutlass::float_e4m3_t, 2>(params, stream);
}
