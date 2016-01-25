# == Schema Information
#
# Table name: trainees
#
#  id         :integer          not null, primary key
#  person_id  :integer
#  sesshin_id :integer
#  fulltime   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Trainee < ActiveRecord::Base
  belongs_to :person
  belongs_to :sesshin
  has_many :financial_info
  has_many :housing_info
end
