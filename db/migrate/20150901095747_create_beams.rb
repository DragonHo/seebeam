class CreateBeams < ActiveRecord::Migration
  def change
    create_table :beams do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
