class Appointment < ApplicationRecord
    belongs_to :doctor
  belongs_to :patient

  def doctor_name_attribute=(name)
    self.doctor = Doctor.find_or_create_by(name: name)
  end

  def doctor_name_attribute
    self.doctor ? self.doctor.name : nil
  end

  def patient_name_attribute=(name)
    self.patient = Patient.find_or_create_by(name: name)
  end

  def patient_name_attribute
    self.patient ? self.patient.name : nil
  end

end
