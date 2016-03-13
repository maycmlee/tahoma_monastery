# == Schema Information
#
# Table name: sesshins
#
#  id         :integer          not null, primary key
#  start_date :string
#  end_date   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sesshin < ActiveRecord::Base
  has_many :retreat_applications
  has_many :users, through: :retreat_applications
  has_many :trainees
  has_many :financial_infos, through: :trainees
  has_many :housing_infos, through: :trainees
end
