# == Schema Information
#
# Table name: medical_infos
#
#  id                    :integer          not null, primary key
#  trainee_id            :integer
#  special_medical_needs :boolean
#  medical_needs_note    :string
#  serious_allergies     :boolean
#  allergies_note        :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class MedicalInfo < ActiveRecord::Base
  belongs_to :trainee
  belongs_to :retreat_application
end
