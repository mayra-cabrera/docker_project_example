FROM ruby:2.3.0

ADD ./Gemfile* /usr/src/my_app/ 
WORKDIR /usr/src/my_app
RUN bundle 

ADD . /usr/src/my_app

ENV RAILS_ENV=production
ENV PATH=/usr/src/my_app/bin:/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

EXPOSE 3000
CMD rails server -b 0.0.0.0