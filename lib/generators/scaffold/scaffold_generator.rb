module SpaceFrame
  module Generators
    class ScaffoldGenerator < SpaceFrame::Generators::NamedBase
      source_root File.expand_path('templates', File.dirname(__FILE__))
      
      def scaffold_resource 
        if @name == @name.pluralize && !options[:force_plural]
          logger.warning "You selected a plural resource name. It's best to use the singular version. Override with --force-plural"
          @name = @name.singularize
        end 

        

        #create directory for resource
        directory :name, "app/assets/javascripts/app#{}"
        #move default templates in

      end
    end
  end
end
