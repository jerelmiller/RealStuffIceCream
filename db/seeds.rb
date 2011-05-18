# Setup all news feed items already out there
#
# 

news_attributes = [ { :title => 'Important News',
                      :body => 'The Real Stuff is back!  We took a short break and are in the process of moving to a different facility.  We will be back making ice cream beginning May 1st.  We will be at the farmers market every Saturday as well as several events throughout the city.  We are introducing new products this summer.  Check out the News page for info.
                      
                      We have added a few new flavors.  Take a look at the descriptions on our flavors page'
                    },
                    { :title => 'The Real Stuff Ice Cream Schedule',
                     :body => 'Upcoming events where you can purchase ice cream:
                     
                     Friday Fests:
                     
                     June 10, 5:00 pm - 8:00 pm
                     
                     June 17, 5:00 pm - 8:00 pm
                     
                     July 15, 5:00 pm - 8:00 pm'
                   },
                   { :title => 'Announcing Two New Products!',
                     :body => 'Have you ever tried an ice cream cupcake?  Soon, you\'ll have a chance...
                     
                     Although not technically ice cream, we will be serving crepes in the morning at Farmer\'s Market.  Choose from a variety of fruit flavors.  You can also try ice cream inside for an extra special treat.  Look for The Real Stuff cart in May.'
                   }
                 ]
                 
Product.create!(:name => "Ice Cream", :price => '5')
                     
r = Product.find_by_name('Ice Cream')
                 
flavors_attributes = [ {:title => "Strawberry'd Be Nice",
                        :description => "Strawberry Ice Cream",
                        :product => r
                        },
                        {:title => "Rocky Road",
                         :description => "Chocolate Ice Cream with Marshmallows and nuts",
                         :product => r
                        }
                     ]
                     
jerel = User.new(:first_name => 'Jerel',
                 :last_name => 'Miller',
                 :username => 'jmiller',
                 :email => 'junktheinbox@gmail.com',
                 :password => 'changeme',
                 :password_confirmation => 'changeme')
                 
paula = User.new(:first_name => 'Paula',
                 :last_name => 'Miller',
                 :username => 'pmiller',
                 :email => 'praulta@gmail.com',
                 :password => 'changeme',
                 :password_confirmation => 'changeme')
                 
mark = User.new(:first_name => 'Mark',
                :last_name => 'Miller',
                :email => 'braincrap@hotmail.com',
                :username => 'mmiller',
                :password => 'changeme',
                :password_confirmation => 'changeme')

jerel.save_without_session_maintenance
paula.save_without_session_maintenance
mark.save_without_session_maintenance
                 
news_attributes.each do |news|
  News.create!(news)
end


flavors_attributes.each do |flavor|
  Flavor.create!(flavor)
end
