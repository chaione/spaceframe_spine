module SpaceFrame
  module Spine
    class Railtie < Rails::Railtie

      generators do
        require 'generators/base_generator'
        require 'generators/named_base_generator'
        require 'generators/new/new_generator'
        require 'generators/section/section_generator'
        require 'generators/model/model_generator'
      end

    end
  end
end