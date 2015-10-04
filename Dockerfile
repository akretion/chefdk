FROM ubuntu-debootstrap:14.04
MAINTAINER Raphael Valyi <rvalyi@akretion.com>

RUN apt-get update
RUN apt-get install curl git -y

RUN curl -L https://www.opscode.com/chef/install.sh | bash -s -- -P chefdk
RUN locale-gen en_US.UTF-8

ADD Gemfile /Gemfile
RUN /opt/chefdk/embedded/bin/bundle install
RUN echo "gem 'berkshelf', '>= 3.0.0'" >> Gemfile

ADD kitchen_wrapper /kitchen_wrapper
ENTRYPOINT ["/kitchen_wrapper"]
