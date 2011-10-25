class Student < ActiveRecord::Base
  has_attached_file :test
  has_many :columns, :dependent => :destroy
  has_many :notes, :dependent => :destroy
end
