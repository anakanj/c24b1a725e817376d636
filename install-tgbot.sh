sudo su
sudo rm /etc/apt/sources.list.d/microsoft-edge-dev.list
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - && sudo apt-get install -y nodejs
sudo apt install git 
git clone https://github.com/Kenzuya/Driverays-Bot.git
cd Driverays-Bot
curl "https://raw.githubusercontent.com/anakanj/c24b1a725e817376d636/main/.env" -o .env
sudo npm i pm2 -g
npm install && npm run build && pm2 start ./Compiled/main.js && pm2 logs
