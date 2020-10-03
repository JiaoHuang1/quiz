class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.integer :questionId, null:false
      t.string :answerBody, null:false
    end
  end
end
