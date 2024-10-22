echo "-> Process start for non-rooted use ========" && 
sudo usermod -aG docker $USER && 
newgrp docker &&
echo "-> Process ended for non-rooted use ========" && 
echo "-> Process start for startup service ========" && 
sudo systemctl enable docker && 
sudo systemctl enable containerd && 
echo "-> Process ended for startup service ========" 
