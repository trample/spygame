class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :content
      t.integer :mission_id
      t.integer :sequence

      t.timestamps
    end
  end
end
