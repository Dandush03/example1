class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.boolean :private, default: false

      t.references :user, index: true, foraign_key: true
      t.timestamps
    end
  end
end
