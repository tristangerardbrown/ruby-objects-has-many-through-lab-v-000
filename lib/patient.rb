class Patient
  @@all = []
  attr_accessor :name, :appointment, :doctor

  def initialize(name)
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    appointments.all.select do |appointment|
    appointment.patient == self
  end
  end

  def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end

end
