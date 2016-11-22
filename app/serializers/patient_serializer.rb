class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :sickness, :appointments
  # belongs_to :doctor
end
