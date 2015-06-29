#Facebook user

  #Attributes 
    #name
    #birthday
    #email
    #password
    #gender
    #privacy

  #Actions
    #creep
    #liking
    #friending
    #poking
    #comments
    #add photos
    #chekin locations
    #block people

class User

  attr_reader :email, :gender
  attr_writer :gender

  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
    @gender 
    @photos = {}
    # @photos = {:flatiron => {"friday selfie" => "img_01.jpg",
    #                     "Jeff Teaching" => "img_02.jpg"},
    #         :chicago => {"Bean" => "img_03.jpg"}
    #       }
  end

  # def email
  #   @email
  # end

  def password
    "hah, no."
  end

  def create_album(name, photos) #symbol for the album name & hash for photos
    @photos[name] = photos
  end

  def list_albums
    @photos.keys
  end

  def show_album_photos(album) #show only photos from a specific album
    @photos[album].keys
  end

end


jamie = User.new("jamie", "jamie@pilgrim.com", "immapassword")
ellie = User.new("ellie", "ellie@flatiron.com", "betterpassword")

puts jamie.email

#jamie.gender = "female"
puts jamie.gender


# jamie.create_album(:flatiron, {"friday selfie" => "img_01.jpg", "Jeff Teaching" => "img_02.jpg"})
# jamie.create_album(:chicago, {"something" => "img_03.jpg", "something else" => "img_04.jpg"})

# puts jamie.list_albums

# puts jamie.show_album_photos(:flatiron)
# puts jamie.show_album_photos(:chicago)



#puts ellie.password
































## Photo Array Example

  #   @photos = {
  #     :flatiron => {"Class Selfie" => "img_01.jpg",
  #                   "Jeff Teaching" => "img_02.jpg",
  #                   "Group Projects" => "img_03.jpg"},
  #     :chicago => {"river walk" => "img_04.jpg",
  #                   "The bean" => "img_05.jpg"}
  #   }

  # def new_albumn(albumn, photos)
  #   @photos[albumn] = photos 
  # end

  # def add_photo(albumn, photo_title, photo_file)
  #   @photos[albumn][photo_title] = photo_file
  # end

  # new_albumn("something", {"new" => "new"})

  # add_photo(:flatiron, "oh hey", "file_02.jpg")

  # puts @photos