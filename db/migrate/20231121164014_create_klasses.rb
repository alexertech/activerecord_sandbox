class CreateKlasses < ActiveRecord::Migration[7.0]
  def change
    create_table :klasses do |t|
      t.string :name
      t.string :period
      t.integer :teacher_id

      t.timestamps
    end
    add_index :klasses, :teacher_id
    add_foreign_key :klasses, :teachers
  end
end
