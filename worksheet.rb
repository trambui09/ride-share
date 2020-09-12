trips = {
    "DR0004": [
        {
            date: "3rd Feb 2016",
            cost: 5,
            rider_id: "RD0022",
            rating: 5
        },
        {
            date: "4th Feb 2016",
            cost: 10,
            rider_id: "RD0022",
            rating: 4
        },
        {
            date: "5th Feb 2016",
            cost: 20 ,
            rider_id: "RD0073",
            rating: 5
        }
    ],
    "DR0001": [
        {
            date: "3rd Feb 2016",
            cost: 10,
            rider_id: "RD0003",
            rating: 3
        },
        {
            date: "3rd Feb 2016",
            cost: 30,
            rider_id: "RD0015",
            rating: 4
        },
        {
            date: "5th Feb 2016",
            cost: 45,
            rider_id: "RD0003",
            rating: 2
        }
    ],
    "DR0002": [
        {
            date: "3rd Feb 2016	",
            cost: 25,
            rider_id: "RD0073",
            rating: 5,
        },
        {
            date: "4th Feb 2016	",
            cost: 15,
            rider_id: "RD0013",
            rating: 1,
        },
        {
            date: "5th Feb 2016",
            cost: 35,
            rider_id: "RD0066",
            rating: 3,
        }
    ],
    "DR0003": [
        {
            date: "4th Feb 2016",
            cost: 5,
            rider_id: "RD0066",
            rating: 5,
        },
        {
            date: "5th Feb 2016	",
            cost: 50,
            rider_id: "RD0003",
            rating: 2,
        }
    ]
}
# METHODS
#method to figure out number of rides each driver has given
def num_of_rides(trips)
  return trips.map do |driver, trip|
    "Driver #{driver} made #{trip.length} rides"
  end
end

# method for total amount of money each driver has made
def total_earned(trips)
  result = trips.map do |driver, trip|
    amount = trip.map { |ride| ride[:cost]}.sum
    { :driver => driver.to_s, :amount => amount}
  end
  return result
end

# method for average rating for each driver
def average_rating(trips)
  result = trips.map do |driver, trip|
    amount = trip.map { |ride| ride[:rating]}.sum
    average_rating = (amount.to_f/trip.size).round(2)
    {:driver => driver, :avg_rating => average_rating}
  end
  return result
end

# method to find Which Driver made the most money
def driver_with_cash(total_earned)
  return total_earned.max_by { |driver_earning| driver_earning[:amount]}
end

# method to find which driver had the highest rating
def driver_with_highest_rating(average_rating)
  return average_rating.max_by { |driver_rating| driver_rating[:avg_rating]}
end

#CALLING my methods below:

# calling the num_of_rides method
puts "Driver and how many trips they made:"
puts ""
puts num_of_rides(trips)

# calling the total_earned method to see how much each driver made
puts "-------------------------------------"
puts "Driver and total amount of money they earned:"
puts ""
array = total_earned(trips)
array.each do |hash|
  puts "#{hash[:driver]} made $#{hash[:amount]}"
end

# calling the average_rating method to see the average rating of each driver
puts "-------------------------------------"
puts "Driver and their average rating:"
puts ""
avg_rating_array = average_rating(trips)
avg_rating_array.each do |driver_and_rating|
  puts "#{driver_and_rating[:driver]} had an average rating of #{driver_and_rating[:avg_rating]}"
end

#calling my driver_with_cash method to print out which driver made the most money
puts "-------------------------------------"
puts "Which driver made the most money?"
puts ""
most_income = driver_with_cash(total_earned(trips))
most_income.each do |driver, value|
  puts "#{most_income[:driver]} made the most money at $#{most_income[:amount]}"
  break
end

#calling my driver_with_highest_rating method to print out which driver had the highest avg_rating
puts "-------------------------------------"
puts "Which driver had the highest rating?"
puts ""
highest_rating = driver_with_highest_rating(average_rating(trips))
highest_rating.each do |driver, value|
  puts "#{highest_rating[:driver]} had the highest average rating of #{highest_rating[:avg_rating]}"
  break
end


########################################################
# Step 1: Establish the layers

# In this section of the file, as a series of comments,
# create a list of the layers you identify.
#
# things: driver_id, cost, date, rating, rider_id, rides
#
# Which layers are nested in each other?
#
# Trips is a hash, where the key is the driver_id the the value is another array. In the array, each element is a hash, representing each ride that the driver did.
# The hash have a key of the other columns (cost, rating, rider_id, and date) while the value is the specific value of it
#
# Which layers of data "have" within it a different layer?
# the trips layer have an array inside of it. and the array have another hash inside of it
#
# Which layers are "next" to each other?
#
# the trips hash is next to the ride array which is next to the hash with the other 4 keys and values

########################################################
# Step 2: Assign a data structure to each layer

# Copy your list from above, and in this section
# determine what data structure each layer should have
# things: driver_id, cost, date, rating, rider_id, rides
# driver_id is the key to the variable trips, and its value is an array (each ride), in the array, each element is a hash with the keys being cost, date, rating, and rider_id and its values

########################################################
# Step 3: Make the data structure!

# Setup the entire data structure:
# based off of the notes you have above, create the
# and manually write in data presented in rides.csv
# You should be copying and pasting the literal data
# into this data structure, such as "DR0004"
# and "3rd Feb 2016" and "RD0022"

########################################################
# Step 4: Total Driver's Earnings and Number of Rides

# Use an iteration blocks to print the following answers:
# - the number of rides each driver has given
# - the total amount of money each driver has made
# - the average rating for each driver
# - Which driver made the most money?
# - Which driver has the highest average rating?
