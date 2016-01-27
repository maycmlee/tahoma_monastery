# == Schema Information
#
# Table name: trainees
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  sesshin_id :integer
#  fulltime   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TraineeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
