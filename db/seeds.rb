def populate_discs
    discs = RestClient.get("https://discitapi.herokuapp.com/disc")
    array = JSON.parse(discs)
    array.each do |s|
        Disc.create(name: s["name"], brand: s["brand"], category: s["category"], speed: s["speed"], glide: s["glide"], turn: s["turn"], fade: s["fade"], stability: s["stability"], flight_path: s["pic"])
    end
end

pictureArray = []

puts "Seeding..."

User.create(:email => "john@gmail.com", :password => "123456", :password_confirmation => "123456", username: "jfinley92", picture: "https://media-exp1.licdn.com/dms/image/C5603AQFJAwz3rVq-Vw/profile-displayphoto-shrink_800_800/0/1661473113820?e=1668643200&v=beta&t=JzY7joYys92Vm4b8y9Cqjtu7Kx5f85eHMbm1L4DepSo")
populate_discs()


puts "Success"