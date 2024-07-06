if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Piusa21/hey_rock.git /hey_rock
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /hey_rock
fi
cd /hey_rock
pip3 install -U -r requirements.txt
echo "Starting hey_rock...."
python3 bot.py
