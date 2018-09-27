class CreatePiggies < ActiveRecord::Migration[5.2]
  def change
    create_table :piggies do |t|
        t.string :name
        t.integer :amount, default: 0
        t.references :user
      t.timestamps
    end
  end
end
