# tmux v2.0 installation steps for Ubuntu 14.04 (Trusty Tahr)
tmux -V
sudo apt-get update
sudo apt-get install -y python-software-properties software-properties-common
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt-get update
sudo apt-get install -y tmux
tmux -V

# tmux v1.9 installation steps for Ubuntu 14.04 (Trusty Tahr)
sudo apt-get update
sudo apt-get install -y python-software-properties software-properties-common
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt-get update
sudo apt-get install -y tmux=2.0-1~ppa1~t
tmux -V

# On Ubuntu 12.04 (Precise Pangolin), step 5 would be: sudo apt-get install -y tmux=1.9a-1~ppa1~p
# On Ubuntu 13.10 (Saucy Salamander), step 5 would be: sudo apt-get install -y tmux=1.9a-1~ppa1~s
