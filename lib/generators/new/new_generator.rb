module SpaceFrame
  module Generators
    class NewGenerator < SpaceFrame::Generators::Base
      def create_empty_shell  
        directory "app", "app/assets/javascripts/app"
      end  
    end
  end
end