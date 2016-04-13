== Haciendo consultas

1) Agregar alumno a una carrera:
carrera = Carrera.first
alumno = carrera.alumnos.create(...data...), obtiene la FK correspondiente 
el alumno_id automaticamente.

2) 