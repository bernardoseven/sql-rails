class Alumno < ActiveRecord::Base
  belongs_to :carrera
  has_many :notas
  has_many :docentes, through: :notas
end
