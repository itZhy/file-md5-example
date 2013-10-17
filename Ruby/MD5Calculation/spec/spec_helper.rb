require 'simplecov'

SimpleCov.start do
  add_filter 'spec/'
  add_filter '_loader'
end

require 'rspec'
require 'spork'

Spork.prefork do
end

Spork.each_run do
end