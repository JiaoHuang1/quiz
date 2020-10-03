class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :questionTitle, null:false
    end

    add_index :questions, :questionTitle, unique:true
  end
end
