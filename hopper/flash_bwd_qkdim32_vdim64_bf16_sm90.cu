// Copyright (c) 2024, Tri Dao.
// Splitting the different head dimensions to different files to speed up compilation.

#include "flash_bwd_launch_template.h"

template<>
void run_mha_bwd_<cutlass::bfloat16_t, 32, 64>(Flash_bwd_params &params, cudaStream_t stream) {
    run_mha_bwd_qkdim32_vdim64<cutlass::bfloat16_t>(params, stream);
}
