#!/bin/bash
#SBATCH -J muduo_test         # 作业名称
#SBATCH -p gh_test            # 队列名称，根据实际情况选择合适的队列
#SBATCH -N 1                  # 请求的节点数
#SBATCH --gres=dcu:1          # 每个节点申请的DCU数量，如果是CPU程序此行不需要
#SBATCH --ntasks-per-node=1   # 每个节点的任务数
#SBATCH -o muduo_job.out      # 标准输出文件
#SBATCH -e muduo_job.err      # 标准错误文件
#SBATCH --time=01:00:00       # 作业运行时间限制（HH:MM:SS）

# 加载所需的模块
module load compiler/dtk/24.04.2

# 进入工作目录
cd /work/home/username/muduo  # 根据自己的情况进行修改

# 运行程序
./muduo data/stories110M.bin data/tokenizer.bin data/input_prompt.txt