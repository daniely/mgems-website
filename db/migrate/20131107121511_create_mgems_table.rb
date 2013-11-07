class CreateMgemsTable < ActiveRecord::Migration
  def change
    create_table :mgems do |t|
      t.string  :name
      t.string  :description
      t.string  :author
      t.string  :website
      t.string  :protocol
      t.string  :repository

      t.timestamps
    end
  end
end
