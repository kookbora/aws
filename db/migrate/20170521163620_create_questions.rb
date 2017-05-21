class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      
      t.text :question
      t.text :today

      t.timestamps null: false
    end
  end
end
