class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :sickness, :doctor_id
  # belongs_to :doctor
end
