module ConsulMerit
  module Generators
    class CustomViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      desc 'Update views in order to show user points'
      def update_views
        remove_file 'app/views/custom/users/show.html.erb'
        remove_file 'app/views/custom/debates/index.html.erb'
        remove_file 'app/views/custom/proposals/index.html.erb'
        copy_file 'users/show.html.erb', 'app/views/custom/users/show.html.erb'
        copy_file 'debates/index.html.erb', 'app/views/custom/debates/index.html.erb'
        copy_file 'proposals/index.html.erb', 'app/views/custom/proposals/index.html.erb'
      end
    end
  end
end
