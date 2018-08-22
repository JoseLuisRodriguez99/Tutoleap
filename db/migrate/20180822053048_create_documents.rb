class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.string :tipo
      t.string :archivo
      t.string :estado
      t.references :user_document,  index: true, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
