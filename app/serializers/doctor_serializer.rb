class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :family_name
  # has_many :patients
end
