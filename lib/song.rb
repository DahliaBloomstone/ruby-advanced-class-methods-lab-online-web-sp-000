class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

#instantiates and saves the song, and it returns the new song that was created
def self.create
  song = self.new
  song
end

#instantiates a song with a name property
def self.new_by_name(name)
  song = self.new
  song.name = name
  song
end

#can find a song present in @@all by name
#returns falsey when a song name is not present in @@all
def self.find_by_name(name)
  @@all.find{ |x| x.name == name}
end

#invokes .find_by_name and .create_by_name instead of repeating code
#returns the existing Song object (doesn't create a new one) when provided the title of an existing Song
self.find_by_name(name) || self.create_by_name(name)
end

def self.alphabetical()
  @@all.sort_by{|x| x.name}
end 


end
