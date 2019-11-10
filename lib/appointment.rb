class Appointment 
  attr_accessor :date, :doctor, :patient
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date 
    @patient = patient 
    @doctor = doctor 
    @@all.push(self)
  end 

  def self.all
    @@all
  end 
  
  def patients 
    @@all.select {|appointment| appointment.patient}
  end
end 