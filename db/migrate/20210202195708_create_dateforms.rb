class CreateDateforms < ActiveRecord::Migration[6.1]
  def change
    create_table :dateforms do |t|
      t.integer :year

      t.timestamps
    end
  end
end
