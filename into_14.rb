# Create the data structure that you created in the previous example for Joe Smith using loops instead of assignment.
# Some helpful methods might be the Array shift and first method.

contact_data = [["joe@email.com",   "123 Main st.",      "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts.each do |name, data|
  [:email, :address, :telephone].each do |key|
	data[key] = contact_data.shift
  end
end
