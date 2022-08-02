# Copyright 2021 The TensorFlow Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# ==============================================================================

# Do not print anything if this is not being used interactively
[ -z "$PS1" ] && return

# Set up attractive prompt
export PS1="\[\e[31m\]tf-docker\[\e[m\] \[\e[33m\]\w\[\e[m\] > "
export TERM=xterm-256color
export ROCM_PATH=/opt/rocm-5.2.0
export PATH=/dt9/usr/bin:${ROCM_PATH}/llvm/bin:${ROCM_PATH}/hip/bin:${ROCM_PATH}/bin:${ROCM_PATH}/llvm/bin:${PATH:+:${PATH}}
# export LD_LIBRARY_PATH=/dt9/usr/lib:/dt9/usr/lib64:${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LDFLAGS="-Wl,-rpath=/dt9/usr/lib64 -Wl,-rpath=/dt9/usr/lib -Wl,-rpath=/dt9/lib/x86_64-linux-gnu -Wl,--dynamic-linker=/dt9/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2"
alias grep="grep --color=auto"
alias ls="ls --color=auto"
# Fix nvidia-docker
ldconfig 
