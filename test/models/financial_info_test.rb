# == Schema Information
#
# Table name: financial_infos
#
#  id                     :integer          not null, primary key
#  trainee_id             :integer
#  retreat_application_id :integer
#  need_aid               :boolean
#  amt_aid_needed         :float
#  deposit_received       :boolean
#  total_payment_received :float
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class FinancialInfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
