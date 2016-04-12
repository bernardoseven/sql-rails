class CreateCarreras < ActiveRecord::Migration
  def change
    create_table :carreras do |t|
      t.string :desc_carrera

      t.timestamps null: false
    end
  end
end
