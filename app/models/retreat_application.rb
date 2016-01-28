# == Schema Information
#
# Table name: retreat_applications
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  sesshin_id :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RetreatApplication < ActiveRecord::Base
  belongs_to :user
  belongs_to :sesshin
  has_one :personal_info
  has_one :housing_info
  has_one :financial_info
  accepts_nested_attributes_for :personal_info, :housing_info, :financial_info
end
