class CreateTutorials < ActiveRecord::Migration[5.1]
  def change
    create_table :tutorials do |t|
      t.datetime :fecha
      t.string :nombre
      t.string :descripcion
      t.string :modalidad
      t.float :presupuesto
      t.references :place, foreign_key: true
      t.references :subject, foreign_key: true
      t.references :user_estudiante, index: true, foreign_key: {to_table: :users}
      t.references :user_docente, index: true, foreign_key: {to_table: :users}
      t.timestamps
    end
  end
end
