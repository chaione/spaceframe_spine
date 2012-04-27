class SpaceframeNewGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  
  def create_empty_shell  
    directory "app", "app/assets/javascripts/app"
  end  
end
