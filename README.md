plan_review
===========
run bundle install to install gems

run bundle exec shotgun to start server localhost:9393

bundle exec rake db:create 
	to create database

bundle exec rake db:migrate 
	to create tables within database

bundle exec rake db:drop 
	to drop database


bundle exec rake scrape:get_agencies   
	Retrieve agencies list

bundle exec rake scrape:get_projects
	to retrieve list of projects

bundle exec rake scrape:get_jobs
	to build jobs
