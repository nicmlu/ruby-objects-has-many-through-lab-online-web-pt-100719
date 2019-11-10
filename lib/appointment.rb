class Appointment 
  attr_accessor :name, :doctor, :patient
  @@all = []
  
  def initialize(name, patient, doctor)
    @name = name
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