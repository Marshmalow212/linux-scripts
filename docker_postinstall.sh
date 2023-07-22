echo "-> Process start for non-rooted use ========" && 
sudo groupadd docker && sudo usermod -aG docker $USER && newgrp docker &&
echo "-> Process ended for non-rooted use ========" && 
echo "-> Process start for startup service ========" && 
sudo systemctl enable docker.service && 
sudo systemctl enable containerd.service && 
echo "-> Process ended for startup service ========" 
