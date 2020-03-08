class User < ApplicationRecord
  has_secure_password
  has_many :educations, dependent: :destroy
  has_many :headers, dependent: :destroy
  has_many :technical_projects, dependent: :destroy
  has_many :technical_skills, dependent: :destroy
  has_many :work_experiences, dependent: :destroy
end
