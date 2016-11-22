class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :sickness
  # belongs_to :doctor
end
