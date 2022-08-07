echo "Updating system..."
sudo apt update
sudo apt upgrade -y
echo "Completed..."
echo "Installing git..."
sudo apt install -y git
echo "Completed..."
echo "Installing ffmpeg..."
sudo apt install -y ffmpeg
echo "Completed..."
echo "Installing curl..."
sudo apt install -y curl
echo "Completed..."
echo "Installing NodeJS..."
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs
echo "Completed..."
echo "Cloning Repository..."
git clone https://Kenzuya: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@github.com/Kenzuya/Setsu-Bot.git
echo "Completed..."
echo "Installing Dependencies..."
cd Setsu-Bot
npm install
npm install -g pm2
echo "Completed..."
echo "Starting Bot..."
pm2 start ecosystem.config.js