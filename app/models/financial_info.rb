# == Schema Information
#
# Table name: financial_infos
#
#  id                     :integer          not null, primary key
#  trainee_id             :integer
#  amt_aid_needed         :float
#  deposit_received       :boolean
#  total_payment_received :float
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class FinancialInfo < ActiveRecord::Base
  belongs_to :trainee
  belongs_to :retreat_application
end
