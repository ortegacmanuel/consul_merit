module ConsulMerit
  module Generators
    class CustomViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      desc 'Update views in order to show user points'
      def update_views
        copy_file 'show.html.erb', 'app/views/custom/users/show.html.erb'
      end
    end
  end
end
