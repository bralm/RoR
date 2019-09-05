class CreateRoRLists < ActiveRecord::Migration[5.0]
  def change
    create_table :ro_r_lists do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
