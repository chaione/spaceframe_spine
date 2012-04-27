module SpaceFrame
  module Generators
    class ScaffoldGenerator < SpaceFrame::Generators::NamedBase
      source_root File.expand_path('templates', File.dirname(__FILE__))

      attr_reader   :controller_name,
                    :view_name,
                    :model_name

      def initialize(*args)
        super(*args)

        if @name == @name.pluralize && !options[:force_plural]
          logger.warning "You selected a plural resource name. It's best to use the singular version. Override with --force-plural"
          @name = @name.singularize
        end

        @controller_name = plural_table_name
        @view_name = plural_table_name
        @model_name = singular_table_name
      end

      def scaffold_resource
        directory "app", "app/assets/javascripts/app"
        #process other templates
      end

    end
  end
end
