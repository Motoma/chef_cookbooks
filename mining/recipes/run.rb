bash 'deploy miner' do
  code <<-EOH
    echo `date -I` > /home/motoma/ran
    git clone https://github.com/miningpool/nheqminer.git
    cd nheqminer/cpu_xenocat/Linux/asm
    sh assemble.sh
    cd ../../../Linux_cmake/nheqminer_cpu
    cmake .
    make
    screen -md ./nheqminer_cpu -l us-east1.zcash.miningpoolhub.com:20570 -u Motoma.`hostname` -p x -t 1
    EOH
end
