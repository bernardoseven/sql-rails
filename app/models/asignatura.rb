class Asignatura < ActiveRecord::Base
  belongs_to :carrera
  has_many :notas
end
