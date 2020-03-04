# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Header.destroy_all
TechnicalProject.destroy_all
WorkExperience.destroy_all
Education.destroy_all
TechnicalSkill.destroy_all
User.destroy_all

josh_cabral = User.create(name: "Josh Cabral", username: "josh123", password: "josh123")
parker_bacall = User.create(name: "Parker Bacall", username: "parker123", password: "parker123")
jorge_santos = User.create(name: "Jorge Santos", username: "jorge123", password: "jorge123")

Header.create(title: "Full Stack Developer/Software Engineer", personal_website: "https://www.google.com", git_hub: "https://www.github.com", linked_in: "https://www.linkedin.com", email: "email@email.com", phone_number: "000-000-0000", mission_statement: "Find a job", user: parker_bacall)
Header.create(title: "Full Stack Developer/Software Engineer", personal_website: "https://www.google.com", git_hub: "https://www.github.com", linked_in: "https://www.linkedin.com", email: "email@email.com", phone_number: "000-000-0000", mission_statement: "Find networking opportunities", user: jorge_santos)
Header.create(title: "Full Stack Developer/Software Engineer", personal_website: "https://www.google.com", git_hub: "https://www.github.com", linked_in: "https://www.linkedin.com", email: "email@email.com", phone_number: "000-000-0000", mission_statement: "Find a mentor", user: josh_cabral)

TechnicalProject.create(name: "Whiskey Finder App", description: "selects and stores your favorite whiskey", deployed_app: "https://www.google.com", git_hub: "https://www.github.com", video: "https://www.youtube.com", detailed_description: "teaches javascript fundamentals, utilizes a posgresql database, teaches css fundamentals", user: josh_cabral)
TechnicalProject.create(name: "Hiking Trail Finder App", description: "helps discover hiking trails in your area", deployed_app: "https://www.google.com", git_hub: "https://www.github.com", video: "https://www.youtube.com", detailed_description: "teaches javascript fundamentals, utilizes a posgresql database, teaches css fundamentals", user: jorge_santos)
TechnicalProject.create(name: "Road Bike Trail Finder App", description: "helps discover road biking trails in your area", deployed_app: "https://www.google.com", git_hub: "https://www.github.com", video: "https://www.youtube.com", detailed_description: "teaches javascript fundamentals, utilizes a posgresql database, teaches css fundamentals", user: parker_bacall)

WorkExperience.create(job_title: "Clerk, King Soopers", date: "Nov 2018 - Mar 2019", location: "Denver, CO", description: "kept the money safe", detailed_description: "handled customer money, bagged groceries extremely well", user: parker_bacall)
WorkExperience.create(job_title: "Bookkeeper, Barnes & Noble", date: "Nov 2018 - Mar 2019", location: "Denver, CO", description: "watched after all the books", detailed_description: "kept books organized, read a new book every weekend", user: josh_cabral)
WorkExperience.create(job_title: "Barista, Starbucks", date: "Nov 2018 - Mar 2019", location: "Denver, CO", description: "made the good drinks", detailed_description: "fraps, mochas, and capps", user: jorge_santos)

Education.create(name: "University of Denver", date: "Jan 2019 - May 2019", description: "Performing Arts degree", user: parker_bacall)
Education.create(name: "Arapahoe Community College", date: "Jan 2019 - May 2019", description: "Advanced Mathematics degree", user: josh_cabral)
Education.create(name: "Colorado State University", date: "Jan 2019 - May 2019", description: "Environmental Engineering degree", user: jorge_santos)

TechnicalSkill.create(description: "Javascript, HTML, CSS, React, Postgresql, Sqlite, Nodejs", user: parker_bacall)
TechnicalSkill.create(description: "Javascript, HTML, CSS, React, Postgresql, Sqlite, Nodejs", user: jorge_santos)
TechnicalSkill.create(description: "Javascript, HTML, CSS, React, Postgresql, Sqlite, Nodejs", user: josh_cabral)