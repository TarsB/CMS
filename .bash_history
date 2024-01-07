mkdir projects
cd projects
wget https://github.com/lando/lando/releases/download/v3.20.4/lando-x64-v3.20.4.deb
sudo dpkg -i --ignore-depends=docker-ce lando-x64-v3.20.4.deb
rm lando-x64-v3.20.4.deb
mkdir my-first-drupal9-app  && cd my-first-drupal9-app  && lando init  --source cwd  --recipe drupal9  --webroot web  --name my-first-drupal9-app
lando composer create-project drupal/recommended-project:9.x tmp && cp -r tmp/. . && rm -rf tmp
lando start
cd projects/my-first-drupal9-app/
lando init
lando init  --source cwd  --recipe drupal9  --webroot web  --name my-first-drupal9-app
lando composer create-project drupal/recommended-project:9.x tmp && cp -r tmp/. . && rm -rf tmp
