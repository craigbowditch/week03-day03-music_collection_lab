require('pry')

require_relative('../models/artist')
require_relative('../models/album')


  artist1 = Artist.new(
    {
      'name' => "Elliott Smith"
      }
    )

      artist1.save()

  album1 = Album.new (
    {
      'title' => "XO",
      'genre' => "Folk Rock",
      'customer_id' => artist1.id
    }
  )

  album1.save()


binding.pry
nil
