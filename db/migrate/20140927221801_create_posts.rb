class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string		:user
      t.text		:body
      t.references 	:topic

      t.timestamps

    end
  end
end
