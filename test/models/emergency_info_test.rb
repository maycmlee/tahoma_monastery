# == Schema Information
#
# Table name: emergency_infos
#
#  id                             :integer          not null, primary key
#  trainee_id                     :integer
#  retreat_application_id         :integer
#  emergency_contact_name         :string
#  emergency_contact_phone        :string
#  emergency_contact_relationship :string
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#

require 'test_helper'

class EmergencyInfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
