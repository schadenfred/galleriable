class User < ApplicationRecord

  # include Galleriable

   has_many :galleries, as: :galleriable
    has_many :slides, through: :galleries
    has_many :galleries_photos, as: :photographable
end
