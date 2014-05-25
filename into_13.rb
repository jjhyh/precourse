# Using the hash you created from the previous exercise, demonstrate how you would access Joe's email
# and Sally's phone number?


contacts = {"Joe Smith"     => {:email     => "joe@email.com", 
	                            :address   => "123 Main st.",
	                            :telephone => "555-123-4567"}, 
            "Sally Johnson" => {:email     => "sally@email.com",
            	                :address   => "404 Not Found Dr.",
            	                :telephone => "123-234-3454"}} 

contacts['Joe Smith'][:email]
contacts['Sally Johnson'][:telephone]
