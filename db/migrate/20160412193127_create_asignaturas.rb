class CreateAsignaturas < ActiveRecord::Migration
  def change
    create_table :asignaturas do |t|
      t.string :desc_asig
      t.integer :horas_asig
      t.references :carrera, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
