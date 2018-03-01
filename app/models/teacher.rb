class Teacher < ApplicationRecord
	validates :course_name, presence: true,
                    length: { is: 3 }
end
