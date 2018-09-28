class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
        t.string :equation
        t.string :operation
        t.references :user
      t.timestamps
    end
  end
end
