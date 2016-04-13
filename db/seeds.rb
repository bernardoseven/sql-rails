# Carreras
4.times do |n|
    desc_carrera = Faker::Superhero.name
    Carrera.create!(desc_carrera: desc_carrera)
end
# Asignaturas
9.times do |n|
    desc_asig = Faker::Superhero.power
    horas_asig = Faker::Number.between(1, 10)
    carrera_id = Faker::Number.between(1, 4)
    Asignatura.create!(desc_asig: desc_asig,
                       horas_asig: horas_asig,
                       carrera_id: carrera_id)
end
# Alumnos
99.times do |n|
    nom_alumno = Faker::Name.first_name
    ape_alumno = Faker::Name.last_name
    edad_alumno = Faker::Number.between(18, 31)
    sexo_alumno = Faker::Number.between(0, 1)
    ingreso_alumno = Faker::Number.between(2010, 2016)
    carrera_id = Faker::Number.between(1, 4)
    Alumno.create!(nom_alumno: nom_alumno,
                   ape_alumno: ape_alumno,
                   edad_alumno: edad_alumno,
                   sexo_alumno: sexo_alumno,
                   ingreso_alumno: ingreso_alumno,
                   carrera_id: carrera_id)
end
# Notas
300.times do |n|
    nota_final = Faker::Number.between(2, 7)
    semestre = Faker::App.name
    alumno_id = Faker::Number.between(1, 99)
    docente_id = Faker::Number.between(1, 4)
    asignatura_id = Faker::Number.between(1, 9)
    Nota.create!(nota_final: nota_final,
                  semestre: semestre,
                  alumno_id: alumno_id,
                  docente_id: docente_id,
                  asignatura_id: asignatura_id)
end
# Docentes
4.times do |n|
    nom_docente = Faker::Book.author
    ape_docente = Faker::Name.last_name
    ingreso_docente = Faker::Number.between(2005, 2016)
    Docente.create!(nom_docente: nom_docente,
                    ape_docente: ape_docente,
                    ingreso_docente: ingreso_docente)
end