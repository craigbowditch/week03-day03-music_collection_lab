require('pry')

require_relative('../models/artist')
require_relative('../models/album')

Album.delete_all()
Artist.delete_all()


  artist1 = Artist.new(
    {
      'name' => "Elliott Smith"
      }
    )

      artist1.save()

    artist2 = Artist.new(
      {
      'name' => "Air"
        }
      )

      artist2.save()

  album1 = Album.new (
    {
      'title' => "XO",
      'genre' => "Folk Rock",
      'artist_id' => artist1.id
    }
  )

  album1.save()

  album2 = Album.new (
    {
      'title' => "Either/Or",
      'genre' => "Folk Rock",
      'artist_id' => artist1.id
    }
  )

  album2.save()

album3 = Album.new (
  {
    'title' => "Moon",
    'genre' => "Chill",
    'artist_id' => artist2.id
    }
  )

album3.save()
binding.pry
nil
