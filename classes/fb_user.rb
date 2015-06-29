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

  #takes place of having to write long reader & writer methods
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

  #Method not needed anymore with the attr_reader above
  # def email
  #   @email
  # end

  #We don't want the password to be read
  def password
    "hah, no."
  end

  def create_album(name, photos) #symbol for the album name & hash for photos
    @photos[name] = photos
  end

  def list_albums #Lists the name of all our albumns
    @photos.keys
  end

  def show_album_photos(album) #show only photos from a specific album
    @photos[album].keys
  end

end

#Every user we create expects these three arguments to be passed in right away (name, email & password), as specified in our initialize method
jamie = User.new("jamie", "jamie@pilgrim.com", "immapassword")
ellie = User.new("ellie", "ellie@flatiron.com", "betterpassword")

puts jamie.email


#Need to set female before we call it, as was set 
jamie.gender = "female"
puts jamie.gender

#creates a new album. Remember to pass in two arguments, the comma after the album name is necessary. For consistency, name should be a symbol and photos should be entered in a hash, even if it's only one. 
jamie.create_album(:flatiron, {"friday selfie" => "img_01.jpg", "Jeff Teaching" => "img_02.jpg"})
jamie.create_album(:chicago, {"something" => "img_03.jpg", "something else" => "img_04.jpg"})

#Will put all the album titles available to the user specified. 
puts jamie.list_albums

#specify album name by key, will return a list of all photo titles
puts jamie.show_album_photos(:flatiron)
puts jamie.show_album_photos(:chicago)

#Will laugh in our face
puts ellie.password
































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