require 'rails'

module RwDepotTheme
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../../../../../app/views", __FILE__)
      
      desc "This generator will create all the views for the depot front-end"
      
      def copy_layout
        say_status("copying", "Application Layout", :green)
        remove_file("app/views/layouts/application.html.erb")
        copy_file("application.html.erb", "app/views/layouts/application.html.erb")
      end
      
      def add_asset_loads
        say_status("inserting", "Asset load paths", :green)
        append_file("app/assets/javascripts/application.js", "//= require depot")
        inject_into_file("app/assets/stylesheets/application.css", :before => '*/') do
          " *= require depot\n"
        end
      end
    end
  end
end