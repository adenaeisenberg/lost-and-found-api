class CreateLostItems < ActiveRecord::Migration[7.0]
  def change
    create_table :lost_items do |t|
      t.string :name
      t.string :image_url
      t.string :last_seen

      t.timestamps
    end
  end
end
