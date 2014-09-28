class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :user_name
      t.string :title
      t.references :forum

      t.timestamps
    end
  end
end
