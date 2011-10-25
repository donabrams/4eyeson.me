class Column < ActiveRecord::Base
  belongs_to :student
  attr_accessible :percent, :note, :student_id
end
