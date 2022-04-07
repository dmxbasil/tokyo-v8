if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/dmxbasil/tokyo-v9 /tokyo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /tokyo
fi
cd /tokyo
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
