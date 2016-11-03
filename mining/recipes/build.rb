bash 'build miner' do
  code <<-EOH
    cd nheqminer/cpu_xenocat/Linux/asm
    sh assemble.sh
    cd ../../../Linux_cmake/nheqminer_cpu
    cmake .
    make
    EOH
end
