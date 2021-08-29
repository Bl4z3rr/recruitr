# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Skill.destroy_all

skill = Skill.create(name: "Javascript")
skill = Skill.create(name: "Python")
skill = Skill.create(name: "Java")
skill = Skill.create(name: "C++")
skill = Skill.create(name: "Swift")
skill = Skill.create(name: "TypeScript")
skill = Skill.create(name: "Go Programming Language")
skill = Skill.create(name: "SQL")
skill = Skill.create(name: "Ruby on Rails")
skill = Skill.create(name: "PHP")
skill = Skill.create(name: "Kotlin")
skill = Skill.create(name: "C#")
skill = Skill.create(name: "Rust")
skill = Skill.create(name: "Scala")
skill = Skill.create(name: "Elixir")
skill = Skill.create(name: "HTML")
skill = Skill.create(name: "CSS")

Candidate.create!(
                  name: 'Liam',
                  surname:'Lama',
                  email:'l.lama@mail.com',
                  development_type: 'Backend',
                  seniority_level: 'Senior'
                  )

Recruiter.create!(
                  name: 'Liam',
                  surname:'Lama',
                  email:'l.lama@mail.com',
                  development_type: 'Backend'
                  )

Position.create!(
                  name: 'Ruby Developer',
                  description: 'Backend ruby dev with 2 years',
                  development_type: 'Backend',
                  seniority_level: 'Senior'
                  )
