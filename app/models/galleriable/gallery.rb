module Galleriable
  class Gallery < ApplicationRecord
    belongs_to :galleriable, polymorphic: true
  end
end
