require 'simplecov'

SimpleCov.start do
  add_filter 'spec/'
  add_filter '_loader'
end

module MD5Calculation
  ROOT = File.expand_path '../..', __FILE__
end


require 'rspec'
require 'spork'

Spork.prefork do
end

Spork.each_run do
  require_relative "../lib/MD5Calculation"
end