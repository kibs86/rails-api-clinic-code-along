class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :family_name, :appointments
  # has_many :patients
end
