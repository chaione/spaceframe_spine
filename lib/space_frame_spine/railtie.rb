module SpaceFrame
  module Spine
    class Railtie < Rails::Railtie

      generators do
        require 'generators/base_generator'
        require 'generators/named_base_generator'
        require 'generators/new/new_generator'
        require 'generators/scaffold/scaffold_generator'
      end

    end
  end
end