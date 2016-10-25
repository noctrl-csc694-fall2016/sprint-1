# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

  #----------------------------------#
  # Database Seed File
  # original written by: Wei H, Oct 14 2016
  # major contributions by:
  #             Andy W, Oct 18 2016
  #----------------------------------#

# Create sample activties
Activity.create!( name: "Golf Outing 2015",
                  start_date: "2016-09-09",
                  end_date: "2016-09-19",
                  description: "Fun",
                  goal: "400",
                  notes: "Contact Jen for more information.")
                  
Activity.create!( name: "General",
                  start_date: "2016-07-09",
                  end_date: "2016-08-19",
                  description: "The more the better.",
                  goal: "0",
                  notes: "Contact Jen for more information.")
                  
Activity.create!( name: "Color Marathon",
                  start_date: "2016-07-09",
                  end_date: "2016-07-09",
                  description: "Fun",
                  goal: "5000",
                  notes: "Contact Jen for more information.")
                
Activity.create!( name: "Food Truck",
                  start_date: "2016-07-16",
                  end_date: "2016-07-16",
                  description: "Fun",
                  goal: "100",
                  notes: "Contact Jen for more information.")

#Create sample donors                 
Donor.create!( first_name: "Joe",
                  last_name: "Donor",
                  address: "101 College Lane",
                  address2: "APT 2",
                  city: "Naperville",
                  state: "IL",
                  zip: "60564",
                  phone: "815-555-5551",
                  email: "joe.donor@ncc.edu",
                  notes: "Example donor.")
                  
Donor.create!( first_name: "Jane",
                  last_name: "Brown",
                  address: "455 Summit Ave",
                  city: "Downers Grove",
                  state: "IL",
                  zip: "60555",
                  phone: "815-555-5552",
                  email: "janeb@hotmail.com",
                  notes: "Example donor #2.")
                  
Donor.create!( first_name: "Tim",
                  last_name: "Lee",
                  address: "55 Summit Ln",
                  city: "Downers Grove",
                  state: "IL",
                  zip: "60555",
                  phone: "515-555-5552",
                  email: "timlee@hotmail.com",
                  notes: "Example donor #3.")
                  
Donor.create!( first_name: "Brian",
                  last_name: "Brown",
                  address: "100 Main Ave.",
                  city: "Chicago",
                  state: "IL",
                  zip: "60060",
                  phone: "330-257-6689",
                  email: "bbrown@hotmail.com",
                  notes: "Example donor #4.")
                  
#Create sample donations/gifts                 
Gift.create!( activity_id: 1,
              donor_id: 1,
              donation_date: "2016-09-06",
              amount: 20,
              gift_type: "Cash",
              notes: "First gift.")
              
Gift.create!( activity_id: 1,
              donor_id: 2,
              donation_date: "2016-09-09",
              amount: 100,
              gift_type: "Cash")
              
              
Gift.create!( activity_id: 2,
              donor_id: 2,
              donation_date: "2016-07-09",
              amount: 150,
              gift_type: "Check")
              
              
Gift.create!( activity_id: 2,
              donor_id: 3,
              donation_date: "2016-10-14",
              amount: 50,
              gift_type: "Cash")
              
              
Gift.create!( activity_id: 3,
              donor_id: 3,
              donation_date: "2016-09-30",
              amount: 2500,
              gift_type: "Cash")