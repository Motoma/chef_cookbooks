bash 'checkout nheqminer' do
  user 'motoma'
  cwd '/home/motoma'
  code <<-EOH
    git clone https://github.com/miningpoolhub/nheqminer.git
  EOH
end
