CURRENT_VERSION=2.36.7
wget https://github.com/Versent/saml2aws/releases/download/v${CURRENT_VERSION}/saml2aws_${CURRENT_VERSION}_linux_amd64.tar.gz
tar -xzvf saml2aws_${CURRENT_VERSION}_linux_amd64.tar.gz -C /home/node
cd /home/node
chmod u+x ~/saml2aws
cd /usr/local/bin
sudo ln -s /home/node/saml2aws
sudo chmod +x node *
cd /workspaces
# https://github.com/pnpm/pnpm/issues/5803 - Run this from your root project folder
pnpm config set store-dir /home/node/.local/share/pnpm/store