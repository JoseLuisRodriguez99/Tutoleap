class CreateQualifications < ActiveRecord::Migration[5.1]
  def change
    create_table :qualifications do |t|
      t.integer :valor
      t.string :descripcion
      t.references :user_estudiante, index: true, foreign_key: {to_table: :user}
      t.references :user_docente, index: true, foreign_key: {to_table: :user}

      t.timestamps
    end
  end
end
