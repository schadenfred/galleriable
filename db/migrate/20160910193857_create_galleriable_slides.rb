class CreateGalleriableSlides < ActiveRecord::Migration[5.0]
  def change
    create_table :galleriable_slides do |t|
      t.integer :gallery_id
      t.integer :photo_id
      t.string :comment

      t.timestamps
    end
  end
end
