class Patient
  @@all = []
  attr_accessor :name

  def initialize(name)
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date )
  end

  def appointments
    Appointments.all.collect do |appointment|
    appointment.patient = self
  end
  end

  def doctors
    Appointments.all.collect do |appointment|
      appointment.doctor
    end
  end 

end
