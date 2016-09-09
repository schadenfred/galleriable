class GalleriableGenerator < Rails::Generators::NamedBase
  namespace "galleriable"

  source_root File.expand_path('../templates', __FILE__)

  def add_engine_route_to_app
    # mount Galleriable::Engine => "/galleriable"
    route "mount Galleriable::Engine => \"/\/galleriable\""

    # route "resources :people"

  end

end
