require 'pg'

class Bookmarks

  # def self.all
  #   ['www.google.com', 'www.bbc.co.uk', 'www.yahoo.co.uk']
  # end

  def self.fetch_bookmarks # this returns a tuple (a bunch of hashes)
    db_connect = PG.connect( dbname: 'bookmark_manager' )
    db_result = db_connect.exec( "SELECT * FROM bookmarks")
    db_result.map { |bookmark| bookmark['url'] }
  end

  


end
