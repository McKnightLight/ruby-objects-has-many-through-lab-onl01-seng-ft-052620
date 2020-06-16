class Appointment
  
  def self.all 
    @@all 
  end   
  
  attr_accessor :date, :patient, :doctor 
  
  def initialize(name)
    @name = name 
  end 
  
  def patient
  end 
  
  def doctor
  end 

end 
