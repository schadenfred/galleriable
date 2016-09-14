class GalleriableGenerator < Rails::Generators::NamedBase
  namespace "galleriable"

  source_root File.expand_path('../templates', __FILE__)

  def add_engine_route_to_app
    route "mount Galleriable::Engine => \"\/galleriable\""
  end

  def add_galleriable_to_models
    insert_into_file "app/models/#{file_name}.rb", "  include Gallerify\n", :after => "ApplicationRecord\n"
  end
end
