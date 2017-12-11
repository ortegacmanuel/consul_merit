require 'merit'

module ConsulMerit
  class Engine < ::Rails::Engine
    isolate_namespace ConsulMerit

    # TODO Explore why this is not working directly from the Merit gem
    ActiveRecord::Base.send :include, Merit

    config.before_initialize do
      config.i18n.load_path += Dir["#{config.root}/config/locales/**/*.yml"]
    end

    initializer "consul_merit.assets.precompile" do |app|
      app.config.assets.precompile += %w( consul_merit/consul_merit.css consul_merit/coin.png )
    end
  end
end
