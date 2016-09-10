class CreateGalleriableGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :galleriable_galleries do |t|
      t.string :name
      t.json :properties
      t.true :polymorphic

      t.timestamps
    end
  end
end
