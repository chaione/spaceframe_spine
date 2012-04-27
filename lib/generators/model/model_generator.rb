module SpaceFrame
  module Generators
    class ModelGenerator < SpaceFrame::Generators::NamedBase
      source_root File.expand_path('templates', File.dirname(__FILE__))

      attr_reader   :model_name

      def initialize(*args)
        super(*args)

        if @name == @name.pluralize && !options[:force_plural]
          logger.warning "You selected a plural resource name. It's best to use the singular version. Override with --force-plural"
          @name = @name.singularize
        end

        @model_name = singular_table_name
      end

      def generate_model
        directory "app", "app/assets/javascripts/app"
        #process other templates
      end

    end
  end
end
