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
end
