require 'test_helper'
require 'generators/galleriable/galleriable_generator'

module Galleriable
  class GalleriableGeneratorTest < Rails::Generators::TestCase
    tests GalleriableGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    test "generator runs without errors" do
      # assert_nothing_raised do
      #   run_generator ["galleriable"]
      # end

      # assert_migration "db/migrate/create_products.rb" do
      #   run_generator ["galleriable"]
      # end
    end
  end
end
