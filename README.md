initial commit

-User Stories-
Auth:
As a user I want to sign up for an account.
As a user I want to log in to a personal account.
As a user I want to sign out of my account.
As a user I want an option to change my password.

App:
As a user I want to select a mountain with given elevation.
As a user I want to input data about my hike. (Trails used, time to complete, notes, date.)
As a user I want to update hiking data.
As a user I want to delete hiking data.
As a user I want to check be able to see mountains completed/yet to complete.
As a user I want to be able to retrieve this data at a later date.

extra?
As a user I want a stats page with total hikes, total unique peaks, total time hiked,
total mileage.
As a user I want to create custom hikes.
Hard code trail options with set mileage and total elevation


3 resources: Users --< Hikes >-- Mountains

hike:
when:date
trail:string
duration:integer
note:text

app/controllers/hikes_controller.rb
app/models/hike.rb
app/serializers/hike_serializer.rb
db/migrate/20170717185031_create_hikes.rb
spec/controllers/hikes_controller_spec.rb
spec/models/hike_spec.rb
spec/requests/hikes_spec.rb
spec/routing/hikes_routing_spec.rb
