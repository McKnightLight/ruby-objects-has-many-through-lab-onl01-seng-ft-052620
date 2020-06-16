class Doctor  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  attr_accessor :name, :appointments, :patient 
  
  def initialize(name)
    @name = name 
    @appointments = []
  end 
  
  def new_appointment  (date, patient)
    appointment = Appointment.new(date, patient, self)
    @appointments << appointment
  end 
  
  def patients 
    @appointments.collect do |appointment|
      appointment.patient 
    end 
  end 
  
  def self.all 
    @@all 
  end 
  
end 