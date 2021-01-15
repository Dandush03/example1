class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :body

      t.references :question, index: true, foraign_key: true
      t.references :user, index: true, foraign_key: true
      t.timestamps
    end
  end
end
