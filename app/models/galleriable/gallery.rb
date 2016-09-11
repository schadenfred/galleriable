module Galleriable

    # module GalleriableConcern

    # extend ActiveSupport::Concern

    included do
      has_many :galleries, as: :galleriable
      has_many :slides, through: :galleries
      has_many :photos, as: :photographable
    end

    def default_gallery
      galleries.find_by(name: "default") || nil
    end

    def default_photo
      default_gallery ? default_gallery.slides.first.photo : nil
    end
  end

  class Gallery < ApplicationRecord


    belongs_to :galleriable

    # associations
    belongs_to :galleriable, polymorphic: true

    has_many :photos, through: :slides
    has_many :slides

    accepts_nested_attributes_for :photos

    # validations
    validates :name, :galleriable, presence: true
    validates :name,  uniqueness: {
                      scope: [:galleriable_id, :galleriable_type] }

  end
end
