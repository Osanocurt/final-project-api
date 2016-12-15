["users", "requests", "feedbacks"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

users = User.create!([{
  username: "Mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password",
  full_name: "Mike Hayden",
  address: "5 Big Chill Road",
  user_type: "Customer",
  photo: "http://aldryngton.wokingham.sch.uk/wp-content/uploads/2014/11/Santa.jpg"
},{
  username: "Curtis",
  email: "curt@ga.co",
  password: "password",
  password_confirmation: "password",
  full_name: "Curtis Osano",
  address: "10 Big Chill Road",
  user_type: "Runner",
  photo: "http://aldryngton.wokingham.sch.uk/wp-content/uploads/2014/11/Santa.jpg"
},{
  username: "Fred",
  email: "fred@ga.co",
  password: "password",
  password_confirmation: "password",
  full_name: "Fred Patrick",
  address: "64 Zoo Lane",
  user_type: "Customer",
  photo: "http://aldryngton.wokingham.sch.uk/wp-content/uploads/2014/11/Santa.jpg"
},{
  username: "Emilyi",
  email: "emily@ga.co",
  password: "password",
  password_confirmation: "password",
  full_name: "Emily Isacke",
  address: "5 Big Chill Road",
  user_type: "Runner",
  photo: "http://aldryngton.wokingham.sch.uk/wp-content/uploads/2014/11/Santa.jpg"
}])

mickyginger = users[0]  # customer
curtis = users[1]       # runner
fred = users[2]         # customer
# emily = users[3]        # runner

puts "Users were made..."

Request.create!([{
  customer: mickyginger,
  image: "http://aldryngton.wokingham.sch.uk/wp-content/uploads/2014/11/Santa.jpg",
  location_lat: "64",
  location_lng: "87",
  destination_lng: "45",
  destination_lat: "21",
  value: 10.00,
  item_description: "Shoe Box",
  earliest_pickup: "12pm",
  latest_pickup: "3pm",
  earliest_delivery: "4pm",
  latest_delivery: "6pm",
  }])

puts "Requests were made..."

Feedback.create!([{
  customer: fred,
  runner: curtis,
  request_id: 1,
  rating: 3.4,
  content: "Great service"
  }])

puts "Feedback was given..."
puts "Seed file ran away sucessfully"
