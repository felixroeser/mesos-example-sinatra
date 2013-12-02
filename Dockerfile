# DOCKER-VERSION 0.7.0
FROM stackbrew/ubuntu:12.04
 
RUN apt-get -y --force-yes install python-software-properties
RUN add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
RUN apt-add-repository -y ppa:brightbox/ruby-ng-experimental
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get -y --force-yes update
 
RUN apt-get -y --force-yes install build-essential python g++ make ruby2.0 ruby2.0-dev nodejs
RUN gem install bundler
 
ADD . /
 
RUN bundle install --deployment
 
EXPOSE  3000
CMD PORT=3000 bundle exec ruby app.rb
