class CreateLineids < ActiveRecord::Migration[5.2]
  def change
    create_table :lineids do |t|
      t.string :name
      t.string :faculity
      t.string :lineid

      t.timestamps
    end
  end
end
