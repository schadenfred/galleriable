module Gallerify

  extend ActiveSupport::Concern

  included do
    has_many :galleries, as: :galleriable
    has_many :slides, through: :galleries
    has_many :photos, as: :photographable, class_name: "Galleriable::Photo"
  end

  def default_gallery
    galleries.find_by(name: "default") || nil
  end

  def default_photo
    default_gallery ? default_gallery.slides.first.photo : nil
  end
end