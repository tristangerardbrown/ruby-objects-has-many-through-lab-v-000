class Doctor 
  @@all = []
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 

  def self.all 
    @@all  
  end 

  def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end 

  def appointments 
    Appointments.all.collect do |appointments|
      appointments.doctor = self 
    end 
  end 

  def patients 
    Appointments.all.collect do |appointment|
      appointment.patient
    end 
  end 

end 