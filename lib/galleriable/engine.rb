module Galleriable

  class Engine < ::Rails::Engine
    isolate_namespace Galleriable

    initializer "initialize_migrations", before: :load_config_initializers do |app|

      # config.paths["db/migrate"].expanded.each do |expanded_path|
      #   Rails.application.config.paths["db/migrate"] << expanded_path
      # end
    end

    config.generators do |g|
      g.factory_girl false
    end
    # initializer :append_migrations do |app|
    #   unless app.root.to_s.match root.to_s
    #     config.paths["db/migrate"].expanded.each do |expanded_path|
    #       app.config.paths["db/migrate"] << expanded_path
    #     end
    #   end
    # end
  end
end
