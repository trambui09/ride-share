# Ride Sharing Data with Arrays and Hashes
We are going to evaluate the data given to us from our small ride sharing service and organize the given data into a nested data structure using both arrays and hashes.


## But like, why?
Sometimes applications rely on using data from another source, like Google Maps and Twitter. That data needs to be sent in a way that any other application can read and interact with, regardless of what programming language you're working with.

The most common way you'll see that data represented is in JSON. We'll learn more about JSON later, but what you need to know now is that data will often have several layers of data nested within several data structures, but ultimately making up one big data structure.

Sound confusing? Let's have a look at [this example from Google Maps](https://www.sitepoint.com/google-maps-json-file/). How many different layers of data structures are there? What data structures were used? Why were those data structures used for those layers?



## Let's do this!
**Objective:** I want to take the data, from the csv, and review drivers of my small ride sharing business and their ride history. I want to be able to easily see how many rides each driver has given and how much money a driver has made.

Use the file, worksheet.rb, to complete this activity.

### Step 1: Establish the layers
Based on the data provided in the rides.csv, make a list of the different layers our data structure will need. These layers will each represent a new data structure that will nested within another.

### Step 2: Assign a data structure to each layer
Now that you know what layers you have, decide what data structure would be most appropriate to use for each layer.


### Step 3: Make the data structure!
Create the data structure by starting with the outline, then manually inputing some of the data.

Manually add the data from the first few lines of the CSV, don't worry about adding everything now! We'll automate that process in the next step.

### Step 4: Use iteration to make the complete structure
Now that you have a solid structure, use iteration to automate adding all the data appropriately. Be sure to print out the final data structure in terminal to see that is came out as expected. 



## Now what!?
Now we can use the data structure we made above to more easily target specific parts of our data to more easily see how many rides a driver has given and how much they have made!

What are other useful ways we could use this data structure?
