class Doctor 
  attr_accessor :name, :appointments   
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all.push(self)
  end 
  
  def self.all
    @@all 
  end 
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}  
  end 
  
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
    self.appointments.push(appointment) 
  end 
  
  def patients
    appointments.map {|appointment| appointment.patient}
  end 
  
end 