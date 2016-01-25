# == Schema Information
#
# Table name: people
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Person < ActiveRecord::Base
  has_one :contact_info
  has_many :trainees
end
