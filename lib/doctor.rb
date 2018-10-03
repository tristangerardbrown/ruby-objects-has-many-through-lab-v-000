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
    Appointment.new(patient, date, self)
  end

  def appointments
    Appointments.all.select do |appointment|
      appointment.doctor = self
    end
  end

  def patients
    Appointments.all.select do |appointment|
      appointment.patient
    end
  end

end
