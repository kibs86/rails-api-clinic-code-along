class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :sickness
end
