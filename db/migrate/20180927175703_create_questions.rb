class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
        t.integer :num1
        t.integer :num2
        t.string :operation
        t.references :user
      t.timestamps
    end
  end
end
