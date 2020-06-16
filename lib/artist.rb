class Artist
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_song(title, genre)
    Song.new(title, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end

end



class Song 
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name= name
    @artist=artist
    @genre=genre
    @@all << self
  end
  
  def self.all
    @@all
  end
end

class Doctor
  @@all=[]

  def self.all
    @@all
  end

  attr_accessor :name, :appointments, :patient

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(date, patient)
     appointment = Appointment.new(patient, date, self)
     @appointments << appointment
     appointment
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
end




