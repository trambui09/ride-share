# Ride Sharing Data with Arrays and Hashes

## At a Glance

- Practice compound data structures by building part of a ride-sharing app
- Individual, [stage 1](https://github.com/Ada-Developers-Academy/pedagogy/blob/master/rule-of-three.md#stage-1) project
- Due before class, **DATE HERE**

## Learning Goals
- Logically order data into a nested data structure
- Understand benefits of organizing data in a nested structure
- Iterate through a nested data structure to return specific information

## Objective
We will review drivers of a ride sharing service and their ride history. We want to be able to see how many rides each driver has given and how much money a driver has made.

Currently, the data is stored in a CSV. We will take that data and thoughtfully organize it into a nested data structure using both arrays and hashes.

## But why?
Sometimes applications rely on using data from another source, like Google Maps or Twitter. That data needs to be sent in a way that other applications can read and interact with, regardless of what programming language is being used.

The most common way you'll see that data represented is in JSON. We'll learn more about JSON more in depth later, but what you need to know now is that data is often represented with several layers of  nested data structures. Ultimately making up one big data structure.

Have a look at [this example of JSON from Google Maps](sample_google_maps_data.json) _([Source](https://www.sitepoint.com/google-maps-json-file/))_ and answer the following questions.
- How many different layers of data structures are there?
- What data structures were used?
- Why were those data structures used for those layers?


## Let's do this!
Use the file, worksheet.rb, to complete this activity.

### Step 1: Establish the layers
Based on the data provided in the rides.csv, make a list of the different layers our data structure will need. These layers will each represent a new data structure that will nested within another.

### Step 2: Assign a data structure to each layer
Now that you know what layers you have, decide what data structure would be most appropriate to use for each layer.

After this point, consult with a neighbor.

### Step 3: Make the data structure!
Create the data structure by starting with the outline, then manually input all the data from rides.csv into it.

Remember: Be mindful of indentation, it will make it substantially easier to read data as it become more nested.

### Step 4: Total Drivers Earnings and Number of Rides
Iterate through the data structure to display, by printing in terminal, how many rides each driver has given and how much money they have made.

If you have time, also display what the drivers average rating is.


## Wrap up
By having this data structure, we can now more easily target specific parts of our data to see how many rides a driver has given.

What are other useful ways we could use this data structure?
