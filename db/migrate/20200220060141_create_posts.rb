class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :new
      t.string :create
      t.string :index

      t.timestamps
    end
  end
end
