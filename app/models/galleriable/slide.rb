module Galleriable
  class Slide < ApplicationRecord

    belongs_to :gallery
    belongs_to :photo
  end
end
