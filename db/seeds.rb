
# Create 13 users with default values
User.create([
  { name: "John Doe", email: "john.doe@example.com", phone: "81984388381", cpf: 64345858020 },
  { name: "Jane Smith", email: "jane.smith@example.com", phone: "81987654321", cpf: 11994904070 },
  { name: "Alice Johnson", email: "alice.j@example.com", phone: "81981234567", cpf: 67499956083 },
  { name: "Bob Brown", email: "bob.b@example.com", phone: "81982345678", cpf: 44596115036 },
  { name: "Eva Williams", email: "eva.w@example.com", phone: "81983456789", cpf: 53118978058 },
  { name: "Michael Davis", email: "michael.d@example.com", phone: "81984567890", cpf: 17605284047 },
  { name: "Olivia Martinez", email: "olivia.m@example.com", phone: "81985678901", cpf: 59548619008 },
  { name: "James Anderson", email: "james.a@example.com", phone: "81986789012", cpf: 20997284021 },
  { name: "Sophia Clark", email: "sophia.c@example.com", phone: "81987890123", cpf: 72874653020 },
  { name: "Liam Turner", email: "liam.t@example.com", phone: "81988901234", cpf: 91813303088 },
  { name: "Emma Rodriguez", email: "emma.r@example.com", phone: "81989012345", cpf: 91865500046 },
  { name: "William Lee", email: "william.l@example.com", phone: "81989123456", cpf: 85938276080 },
  { name: "Ava Green", email: "ava.g@example.com", phone: "81989234567", cpf: 64398717064 }
])

puts "Seed data for 13 users created successfully!"