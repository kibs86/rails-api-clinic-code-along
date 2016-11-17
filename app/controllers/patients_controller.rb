class PatientsController < ApplicationController
  # calls the set_patient method before show, update, destroy actions.
  # required because those actions require ID to be defined
  before_action :set_patient, only: [:show, :update, :destroy]

  # defines the instance variable @patient as the patient that corresponds
  # to the dynamic id passed in
  # AR creates object based on mapping to row in database
  def set_patient
    @patient = Patient.find(params[:id])
  end

  # requires a root key of patient and will permit the client to send
  # name, sickness and age as well
  # requires a patient key in hash, permit says these can be sub-items
  # in the hash
  def patient_params
    params.require(:patient).permit(:name, :sickness, :age)
  end

  # serializer is used to render the json
  def index
    @patients = Patient.all

    render json: @patients
  end

  def show
    render json: Patient.find(params[:id])
  end

  def create
    @patient = Patient.new(patient_params)

    # if patient.save is successful it will pass back the @patient object with
    # a status of :created (201)
    if @patient.save
      render json: @patient, status: :created, location: @patient
    else
      # if patient.save fails it will pass back the reason(s) why (stored in)
      # @patient.errors and return a code of :unprocessable_entity (400)
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def update
    if @patient.update(patient_params)
      head :no_content
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @patient.destroy

    head :no_content
  end

  # set helper methods to private so they can't be accessed
  private :set_patient, :patient_params
end
