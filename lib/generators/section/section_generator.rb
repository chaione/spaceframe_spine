module SpaceFrame
  module Generators
    class SectionGenerator < SpaceFrame::Generators::NamedBase
      source_root File.expand_path('templates', File.dirname(__FILE__))

      attr_reader   :controller_name,
                    :view_name,
                    :model_name

      def initialize(*args)
        super(*args)
        @logger = Logger.new STDOUT

        if @name == @name.pluralize && !options[:force_plural]
          @logger.info "You selected a plural resource name. It's best to use the singular version. Override with --force-plural"
          @name = @name.singularize
        end

        @controller_name = plural_table_name
        @view_name = plural_table_name
        @model_name = singular_table_name
      end

      def generate_section
        directory "app", "app/assets/javascripts/app"

        insert_into_file "app/assets/javascripts/app/main.coffee",
                         "    @#{@controller_name} = new App.#{@controller_name.camelize}.Section()",
                         :after =>"super\n"

        gsub_file "app/assets/javascripts/app/main.coffee", /\@sections = \[(.*)\]/ do |match|
          puts match.to_s
          match = /\@sections = \[(.*)\]/.match(match.to_s)
          puts "match: #{match[1]}"

          if match = "sections = []"
            "@sections = [@#{@controller_name}]"
          else
            sections = match[1].split(",")
            sections << "@#{@controller_name}" unless sections.include?("@#{@controller_name}")
            "@sections = [#{sections.join(',')}]"
          end
        end

        #process other templates
      end

      def add_root_route
        route(%Q{root :to => "#{@controller_name}#index"})
      end

    end
  end
end
