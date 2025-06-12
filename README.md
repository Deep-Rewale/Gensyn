
# Install Python and Other Tools
* For **Linux/Wsl**
```
sudo apt update && sudo apt install -y python3 python3-venv python3-pip curl wget screen git lsof
```
Check Version
```
python3 --version
```
# Install Node.js , npm & yarn
* For **Linux/Wsl**
```
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - && sudo apt update && sudo apt install -y nodejs
```
* Install Yarn (linux)
```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
```
```
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list > /dev/null
```
```
sudo apt update && sudo apt install -y yarn
```
* Check version **(Linux/Mac)**
```
node -v
```
```
npm -v
```
```
yarn -v
```
<div align="center">
# 👨🏻‍💻 Start The Node (Linux/Mac) 
</div>
* 1️⃣ Clone RL-SWARM Repo
```
git clone https://github.com/gensyn-ai/rl-swarm.git
```
* 2️⃣ Create a screen session **(vps)**
```
screen -S gensyn
````
* 3️⃣ Navigate to rl-swarm
```
cd rl-swarm
```
* 4️⃣ Create & Activate a Virtual Environment
```
python3 -m venv .venv
source .venv/bin/activate
```
* 5️⃣ Install Left-over dependencies
```
cd modal-login
```
```
yarn install
```
```
yarn upgrade &&  yarn add next@latest &&  yarn add viem@latest
```
* 6️⃣ Run the swarm Node 🚀
```
cd ..
```
```
./run_rl_swarm.sh
```
- After Running the Above command it will promt `Would you like to connect to the Testnet? [Y/n]` Enter `Y`
- After than it will promt `>> Which swarm would you like to join (Math (A) or Math Hard (B))? [A/b]`  Enter   `a`
- After than it will promt `>> How many parameters (in billions)? [0.5, 1.5, 7, 32, 72]`    
* Now It will promt `Would you like to push models you train in the RL swarm to the Hugging Face Hub? [y/N]` Enter `N`
Here we go🚀
Its Done ✅
It will Generate Logs Soon🙌
* Detach from `screen session` **(vps)**
Use `Ctrl + A` and then press `D`
* Attach to gensyn Screen to see Logs
```
screen -r gensyn
```
<div align="center">
#  🛠 FAQ & Troubleshoot 🛠
</div>
# 1️⃣ How to Login or access  http://localhost:3000/ in VPS? 📶
* Open a new Terminal and login ur vps 
* Allow Incoming connection on VPS
```
sudo apt install ufw -y
sudo ufw allow 22
sudo ufw allow 3000/tcp
```
* Enable ufw
```
sudo ufw enable
```
* Install cloudflared on the VPS
```
wget -q https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
````
```
sudo dpkg -i cloudflared-linux-amd64.deb
```
* Check version
```
cloudflared --version
```
* Make sure your Node is running on port 3000 in Previous Screen
* Run the tunnel command
```
cloudflared tunnel --url http://localhost:3000
```
