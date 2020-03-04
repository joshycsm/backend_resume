class User < ApplicationRecord
  has_secure_password
  has_many :educations
  has_many :headers
  has_many :technical_projects
  has_many :technical_skills
  has_many :work_experiences
end
