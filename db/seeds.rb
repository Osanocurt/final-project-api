["users", "requests", "feedbacks"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
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

Request.create!([{
  customer_id: 1,
  runner_id: 2,
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

Feedback.create!([{
  customer_id: 4,
  runner_id: 2,
  request_id: 3,
  rating: 3.4,
  content: "Great service"
  }])
