module SpaceFrame
  module Generators
    class Base < Rails::Generators::Base
      source_root File.expand_path('templates', File.expand_path(__FILE__))
    end
  end
end