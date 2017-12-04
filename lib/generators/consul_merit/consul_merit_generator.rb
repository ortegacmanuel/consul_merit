module ConsulMerit
  module Generators
    class ConsulMeritGenerator < Rails::Generators::NamedBase

      def inject_merit_content
        if model_exists?
          inject_into_class(model_path, class_name, "  has_merit\n")
        end
      end

      private

      def model_exists?
        File.exist? File.join(destination_root, model_path)
      end

      def model_path
        @model_path ||= File.join('app', 'models', "#{file_path}.rb")
      end
    end
  end
end
