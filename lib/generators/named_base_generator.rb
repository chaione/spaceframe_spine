module SpaceFrame
  module Generators
    class NamedBase < Rails::Generators::NamedBase
      source_root File.expand_path('templates', File.expand_path(__FILE__))
    end
  end
end
