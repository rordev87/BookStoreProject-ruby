User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

author_list = [
    [ "J. D. Salinger", "Jerome David Salinger was an American writer who won acclaim early in life. He led a very private life for more than a half-century. He published his final original work in 1965 and gave his last interview in 1980."],
    [ "F. Scott Fitzgerald", "Francis Scott Key Fitzgerald was an American novelist and short story writer, whose works are the paradigmatic writings of the Jazz Age. He is widely regarded as one of the greatest American writers of the 20th century."],
    [ "Ernest Hemingway", "Ernest Miller Hemingway was an American novelist, short story writer, and journalist. His economical and understated style had a strong influence on 20th-century fiction, while his life of adventure and his public image influenced later generations."]
]

author_list.each do |name, bio|
   Author.create(name: name, bio: bio) 
end
#10.times do |n|
#    Author.create(name: Faker::Name.name, bio: "Some text about the author.")
#end

books_list = [
    [ "The Catcher in the Rye", 1, "The Catcher in the Rye is a 1951 novel by J. D. Salinger. A controversial novel originally published for adults, it has since become popular with adolescent readers for its themes of teenage angst and alienation", 20.00, "Hardback", "Available"],
    [ "Franny and Zooey", 1, "Franny and Zooey is a book by American author J. D. Salinger which comprises his short story Franny and novella Zooey", 10.00, "Paperback", "Available"],
    ["The Great Gatsby", 2, "The Great Gatsby is a 1925 novel written by American author F. Scott Fitzgerald that follows a cast of characters living in the fictional town of West Egg on prosperous Long Island in the summer of 1922", 30.00, "Hardback", "Available"],
    ["Tender Is the Night", 2, "Tender Is the Night is a novel by American writer F. Scott Fitzgerald. It was his fourth and final completed novel, and was first published in Scribner's Magazine between January and April 1934 in four issues", 15.00, "Paperback", "Available"],
    ["The Old Man and the Sea", 3, "The Old Man and the Sea is a short novel written by the American author Ernest Hemingway in 1951 in Bimini, Bahamas, and published in 1952. It was the last major work of fiction by Hemingway that was published during his lifetime.", 15.00, "Paperback", "Available"],
    ["A Moveable Feast", 3, "A Moveable Feast is a memoir by American author Ernest Hemingway about his years as a struggling, young, expatriate journalist and writer in Paris in the 1920s.", 25.00, "Hardback", "Unavailable"], 
]

books_list.each do |title, author_id, description, price, format, availability|
   Book.create(title: title, author_id: author_id, description: description, price: price, format: format, availability: availability) 
end