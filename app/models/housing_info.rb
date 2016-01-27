# == Schema Information
#
# Table name: housing_infos
#
#  id           :integer          not null, primary key
#  trainee_id   :integer
#  need_housing :boolean
#  camping      :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class HousingInfo < ActiveRecord::Base
  belongs_to :trainee
  belongs_to :retreat_application
end
