class GalleriableGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def add_engine_routes_to_host
    route "mount Galleriable::Engine => \"/\/galleriable\""
  end
end
