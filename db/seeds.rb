puts "🌱 Seeding spices..."
# user1 = User.create(username: 'Manu', password: 'mnb')

# Seed your database here
# project1 = Project.create( title: "Bank Calculater", description: "calculate money in agiven bank", status: "COMPLETED")
puts "Deleting old data..."
Skill.destroy_all
Project.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "mnb")
user2 = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "lck")
user3 = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "rrr")


puts "Creating projects..."
project1 = Project.create(project_title: "Banking App", project_language: "Java", project_description: "Money Cashouts", user_id: 1)
project2 = Project.create(project_title: "Pet Finder", project_language: "Python", project_description: "Fvourite pets", user_id: 2)
project3 = Project.create(project_title: "Resort Web", project_language: "Ruby", project_description: "Beatifull Destination", user_id: 2)
project4 = Project.create(project_title: "Akan Calculator", project_language: "C#", project_description: "Best name generator", user_id: 1)
project5 = Project.create(project_title: "Movie Finder", project_language: "Typescript" , project_description: "Best Movies", user_id: 3)

puts "Creating skills..."

skill1 = Skill.create(skill_name: "Ruby", user_id:1)
skill2 = Skill.create(skill_name: "Java", user_id:2)
skill3 = Skill.create(skill_name: "Javascript", user_id:3)

puts "✅ Done seeding!"
