FROM centos:latest
MAINTAINER rang <caedman2011@gmail.com>
RUN yum clean all
RUN yum clean rpmdb
RUN touch /var/lib/rpm/* 
RUN yum install -y epel-release gcc gcc-c++ kernel-devel libffi-devel kernel-devel  kernel-headers gcc c++ make wget  tar zlib-devel openssl-static ruby ruby-devel httpd rubygems yum-plugin-ovl
RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
RUN yum -y install nodejs
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
RUN mkdir /app
COPY . /app
WORKDIR /app
#RUN gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/
RUN gem install bundler
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.org
RUN gem install json
RUN gem list
RUN bundle install
RUN jekyll build
# RUN jekyll serve
#CMD ['jekyll' 'serve']
ENTRYPOINT ["jekyll", "serve"]
EXPOSE 80
