require 'pry'
class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

   
    def initialize(name,artist,genre)
        @@count += 1
        @@artists << artist
        @name = name
        @artist = artist
        @@genres << genre
        @genre = genre
    end

    def self.count
        @@count 
    end


    def self.artists
        @@artists.to_a.uniq
    end 

    def self.genres
        @@genres.to_a.uniq
    end 

    def self.genre_count
        hash = {}
        @@genres.each do |genre|
            hash[genre] ||=0
            hash[genre] += 1
        end 
        hash
    end 

    def self.artist_count
        hash = {}
        @@artists.each do |artist|
            hash[artist] ||=0
            hash[artist] += 1
        end 
        hash
    end 


end