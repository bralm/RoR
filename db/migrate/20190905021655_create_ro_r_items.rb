class CreateRoRItems < ActiveRecord::Migration[5.0]
  def change
    create_table :ro_r_items do |t|
      t.string :content
      t.references :ro_r_list, foreign_key: true

      t.timestamps
    end
  end
end
