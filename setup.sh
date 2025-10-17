# ====================================================================
# === install system prerequisites
# ====================================================================
# via package manager
sudo apt install v-y git

# === docker's special install process
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# install
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# ====================================================================
# ====================================================================
# === install forklift
# ====================================================================
# !!! MANUALLY download from
# https://github.com/PlanktoScope/forklift/releases
# set up install dir
sudo mkdir /opt/forklift
# install
sudo tar -xzf forklift_0.8.0_linux_amd64.tar.gz -C /opt/forklift
# set up symlink for easy usage
sudo ln -s /opt/forklift/forklift /usr/local/bin/forklift
# ====================================================================
# ====================================================================
# === set up docker usage without sudo
# ====================================================================
sudo usermod -aG docker imars  # NOTE: replace `imars` with your username
# !!! MANUALLY log out & log back in
# ====================================================================
# ====================================================================
# === initial set up of segmenter using forklift
# ====================================================================
sudo -E forklift pallet switch --apply github.com/PlanktoScope/pallet-segmenter@edge
# ====================================================================
# ====================================================================
# === set segmenter to run automatically on login
# ====================================================================
echo "forklift stage apply" > ~/.profile
# ====================================================================
# ====================================================================
# === install scripts from this repo
# ====================================================================
git clone git@github.com:USF-IMARS/planktoscope-external-segmentation.git
cp planktoscope-external-segmentation/copyPlanktoScopeImages.sh .
cp planktoscope-external-segmentation/cleanupPlanktoscopeFiles.sh .
chmod +x copyPlanktoScopeImages.sh cleanupPlanktoscopeFiles.sh
# ====================================================================
