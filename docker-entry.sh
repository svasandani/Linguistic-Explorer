#!/bin/bash

# compile static assets
bundle exec rake assets:clobber && bundle exec rake assets:precompile

# start the server
bundle exec rails s -b 0.0.0.0