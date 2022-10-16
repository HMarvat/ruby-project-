FROM ruby:2.7.1
COPY apt.conf /etc/apt/apt.conf
RUN echo "nameserver 8.8.8.8" >> /etc/resolv.conf
# throw errors if Gemfile has been modified since Gemfile.lock
RUN echo "precedence  ::1/128         50" >> /etc/gai.conf
RUN echo "precedence  ::/0            40" >> /etc/gai.conf
RUN echo "precedence  2002::/16       30" >> /etc/gai.conf
RUN echo "precedence  ::/96           20" >> /etc/gai.conf
RUN echo "precedence  ::ffff:0:0/96   10" >> /etc/gai.conf
RUN echo "precedence  2a04:4e42::0/32  5" >> /etc/gai.conf
ENV http_proxy=http://aqib:12345@192.168.13.10:3128
ENV https_proxy=http://aqib:12345@192.168.13.10:3128
COPY Gemfile Gemfile.lock ./
COPY . .
RUN gem install rails
RUN gem install bundler:2.2.26
RUN bundle config unset frozen
RUN bundle install
EXPOSE 3000
CMD ["rails server --binding=0.0.0.0"]
