class Note < ActiveRecord::Base
  belongs_to :student
  attr_accessible :note_text, :student_id
end
