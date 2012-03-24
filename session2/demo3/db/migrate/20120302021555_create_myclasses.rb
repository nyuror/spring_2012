class CreateMyclasses < ActiveRecord::Migration
  def change
    create_table :myclasses do |t|
      t.string :name
      t.integer :count
      t.timestamps
    end
  end
end
