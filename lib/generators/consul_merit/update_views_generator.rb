module ConsulMerit
  module Generators
    class UpdateViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      desc 'Update views in order to show user points'
      def update_views
        remove_file 'app/views/users/show.html.erb'
        copy_file 'show.html.erb', 'app/views/users/show.html.erb'
      end
    end
  end
end
