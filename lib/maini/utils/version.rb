module Maini
  module Utils
    RAILS_VERSION = "4.2.1"
    RUBY_VERSION = IO.read("#{File.dirname(__FILE__)}/../../../.ruby-version").strip
    VERSION = "0.0.2"
  end
end