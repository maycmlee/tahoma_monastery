# == Schema Information
#
# Table name: personal_infos
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  firstname  :string
#  lastname   :string
#  address    :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PersonalInfo < ActiveRecord::Base
  belongs_to :user
end
