module SpaceFrame
  module Generators
    class NewGenerator < SpaceFrame::Generators::Base
      source_root File.expand_path('templates', File.dirname(__FILE__))
      def create_empty_shell  
        directory "app", "app/assets/javascripts/app"
      end

      def remove_require_tree
        gsub_file "app/assets/javascripts/application.js", /require_tree\s\./, "require app/index"
      end
    end
  end
end