class CreateUserMissions < ActiveRecord::Migration
  def change
    create_table :user_missions do |t|
      t.integer :user_id
      t.integer :mission_id

      t.timestamps
    end
  end
end
