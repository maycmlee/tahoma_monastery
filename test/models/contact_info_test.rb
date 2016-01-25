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

require 'test_helper'

class ContactInfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
