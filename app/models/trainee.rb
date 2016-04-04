# == Schema Information
#
# Table name: trainees
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  sesshin_id :integer
#  fulltime   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Trainee < ActiveRecord::Base
  belongs_to :user
  belongs_to :sesshin
  has_many :financial_infos
  has_many :housing_infos
  has_many :emergency_infos
  has_many :medical_infos
end
