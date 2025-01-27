if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Skzbot/PremiumFilter /PremiumFilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PremiumFilter
fi
cd /PremiumFilter
pip3 install -r requirements.txt
echo "Starting PremiumFilter...."
python3 bot.py
