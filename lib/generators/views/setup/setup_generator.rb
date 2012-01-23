require 'rails'

module RwDepotTheme
  module Generators
    class SetupGenerator < ::Rails::Generators::Base
      
      desc "This generator will create all the views for the depot front-end"
      source_root File.expand_path("../../../../app/views", __FILE__)
      
      def setup
        say_status("copying", "Application Layout", :green)
        remove_file("app/views/layouts/application.html.erb")
        copy_file("application.html.erb", "app/views/layouts/application.html.erb")
        
      end
    end
  end
end