module Galleriable
  class Photo < ApplicationRecord

    dragonfly_accessor :photo

    belongs_to :photographable, polymorphic: true

    belongs_to :photographer, class_name: "User",
                              foreign_key: "photographer_id"

    has_many :slides

    accepts_nested_attributes_for :slides

    validates :photographer, presence: true
    # validates :image, presence: true
  end
end
