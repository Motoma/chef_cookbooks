bash 'checkout miner' do
  user 'motoma'
  cwd '/home/motoma'
  code 'git clone https://github.com/miningpoolhub/nheqminer.git'
end

bash 'assemble kernel' do
  user 'motoma'
  cwd '/home/motoma/nheqminer/cpu_xenocat/Linux/asm'
  code 'sh assemble.sh'
end

bash 'generate makefile' do
  user 'motoma'
  cwd '/home/motoma/nheqminer/Linux_cmake/nheqminer_cpu'
  code 'cmake .'
end

bash 'compile miner' do
  user 'motoma'
  cwd '/home/motoma/nheqminer/Linux_cmake/nheqminer_cpu'
  code 'make'
end

bash 'launch miner' do
  user 'motoma'
  cwd '/home/motoma/nheqminer/Linux_cmake/nheqminer_cpu'
  code 'screen -md ./nheqminer_cpu -l us-east-1.zcash.miningpoolhub.com:20570 -u Motoma.`hostname` -p x -t 1'
end
