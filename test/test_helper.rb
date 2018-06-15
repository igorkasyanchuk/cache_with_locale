ENV["RAILS_ENV"] = "test"

require File.expand_path("../../test/dummy/config/environment.rb",  __FILE__)

require "rails/test_help"

puts "USING Rails: #{Gem.loaded_specs['rails'].version}"

Minitest.backtrace_filter = Minitest::BacktraceFilter.new