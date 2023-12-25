class CreateQuizAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :quiz_answers do |t|
      t.references :quiz_questions
      t.string :title, :null => false, :max_legnth => 100
      t.boolean :is_correct, :null=>false, :default=>false
      t.timestamps
    end
  end
end
