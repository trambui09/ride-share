# Work with Ride Share Data using Arrays and Hashes

## Introduction

Rideshare Programs are systems that help people organize carpooling/vanpooling. Some popular on-demand rideshare apps, like Lyft and Uber, store and use data on riders, drivers, and trips, particularly data on when a trip happened, who was the driver, and who was the rider.

## At a Glance

- Individual, [stage 1](https://github.com/Ada-Developers-Academy/pedagogy/blob/master/rule-of-three.md#stage-1) project
- Due before class, **DATE HERE**

## Learning Goals
- Logically order data into a nested data structure
- Understand benefits of organizing data in a nested structure
- Iterate through a nested data structure to return specific information

## Objective
We will look at data of drivers of a rideshare service and their ride history. We want to be able to see how many rides each driver has given and how much money a driver has made.

Currently, the data is stored in a [CSV file](https://en.wikipedia.org/wiki/Comma-separated_values). In this assignment, you should take this data and thoughtfully organize it into a nested data structure that uses both arrays and hashes.

## But why?

Given some data, a programmer often needs to be able to read, parse, and work with that data structure. Data that is organized into nested arrays and hashes can make this work easier. Ideally, data that is very well-organized will make this work easier to write, easier to read, and produce cleaner, higher-quality code.

The most common way you'll see data represented is in [JSON](https://en.wikipedia.org/wiki/JSON). We'll learn more about JSON more in depth later, but what you need to know now is that data is often represented with several layers of nested data structures, ultimately making up one big data structure. If we practice working with nested data structures now, it will make working with JSON later easier!

Have a look at [this example of JSON from Google Maps](sample_google_maps_data.json) _([Source](https://www.sitepoint.com/google-maps-json-file/))_ and answer the following questions.
- How many different layers of data structures are there?
- What data structures were used?
- Why were those data structures used for those layers?

## Let's do this!
Use the file `worksheet.rb` to complete this activity. Open up this file, and type your answers below each prompt. We will not be turning this assignment in, so feel free to write any comments or thoughts within this file!

### Step 1: Establish the layers
Based on the data provided in the `rides.csv`, make a list of the different layers our data structure will need. These layers will each represent a new data structure that will nested within another.

### Step 2: Assign a data structure to each layer
Now that you know what layers you have, decide what data structure would be most appropriate to use for each layer.

After this point, consult with a neighbor.

### Step 3: Make the data structure!
Create the data structure by starting with the outline, then manually input all the data from `rides.csv` into it.

Be mindful of indentation! Proper indentation will make reading data substantially easier as the data becomes more nested.

### Step 4: Total Driver's Earnings and Number of Rides
Iterate through the data structure to display, by printing in terminal, the following info:
- how many rides each driver has given
- how much money each driver has made

Optionally, also display what each driver's average rating is.

## Wrap up

By having this data structure, we can now more easily target specific parts of our data to see how many rides a driver has given.

What are other useful ways we could use this data structure?
