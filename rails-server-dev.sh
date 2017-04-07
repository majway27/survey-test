#/bin/bash

#RAILS_ENV=development bundle install --without production

# Generic
rails server -b $IP -p $PORT

# Passenger
#cd ~/workspace/tc
#passenger start --environment development ~/workspace/tc