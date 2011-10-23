class Student < ActiveRecord::Base
  has_attached_file :test
  has_many :columns
  has_many :notes
end
