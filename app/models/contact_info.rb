# == Schema Information
#
# Table name: contact_infos
#
#  id         :integer          not null, primary key
#  person_id  :integer
#  address    :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ContactInfo < ActiveRecord::Base
  belongs_to :person
end
