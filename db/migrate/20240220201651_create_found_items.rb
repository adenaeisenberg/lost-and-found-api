class CreateFoundItems < ActiveRecord::Migration[7.0]
  def change
    create_table :found_items do |t|
      t.string :name
      t.string :image_url
      t.string :location
      t.string :date

      t.timestamps
    end
  end
end
