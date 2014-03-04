require 'rubygems'
require 'bundler/setup'

Bundler.require

require "#{File.dirname(__FILE__)}/find_faces_job.rb"

Resque.enqueue FindFacesJob