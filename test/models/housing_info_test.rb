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

require 'test_helper'

class HousingInfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
