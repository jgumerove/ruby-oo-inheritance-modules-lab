require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  #binding.pry

  @@songs = []
=begin
  def initialize
    self.class.all << self
  end
=end
=begin
  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end
=end

  def self.all
    @@songs
  end
=begin
  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end
=end

#methods above have been replaced by extending the module class methods in memorable.rb

  def artist=(artist)
    @artist = artist
  end
=begin
  def to_param
    name.downcase.gsub(' ', '-') #shared method 
    #binding.pry
  end
=end 
end
