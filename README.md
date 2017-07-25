# 4K Bagger
4K Bagger is an app designed for users who want to  keep track of their hikes
on their way to completing all 48 4000 footers in New Hampshire. This is a full stack application using Ruby on Rails and Ember.js.


# ERD
http://i.imgur.com/6wTWiZn.png

# Routes


### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |


### Users

| Verb | URI Pattern   | Controller#Action |
|------|---------------|-------------------|
| GET  | `/users`      | `users#index`     |
| GET  | `/users/:id`  | `users#show`      |

### Hikes

| Verb   | URI Pattern   | Controller#Action |
|--------|---------------|-------------------|
| GET    | `/hikes`      | `hikes#index`     |
| GET    | `/hikes/:id`  | `hikes#show`      |
| POST   | `/hikes`      | `hikes#create`    |
| PATCH  | `/hikes/:id`  | `hikes#update`    |
| DELETE | `/hikes/:id`  | `hikes#destroy`   |


### Mountains

| Verb   | URI Pattern         | Controller#Action |
|--------|---------------------|-------------------|
| GET    | `/mountains`        | `mountains#index`     |
| GET    | `/mountains/:id`    | `mountains#show`      |



### Deployed Front-End App:
https://roryenright.github.io/4Kbagger-front/

### Deployed API:
https://glacial-wildwood-35738.herokuapp.com/

### Front-End Repo:
https://github.com/RoryEnright/4Kbagger-front/

### Backend Repo:
https://github.com/RoryEnright/4kbagger-back

### Wireframes:
http://i.imgur.com/ztVJ5et.png

### ERD:
http://i.imgur.com/6wTWiZn.png

## Technologies Used:
This app was built using the Ember.js frontend framework and Ruby on Rails for the API. Other technologies used include:
Bootstrap, Handlebars, PostgresSql, HTML5/CSS3.  No additional gems or modules were used to make this application.  If
forking and cloning, a simple bundle install should take care of any dependencies.

## Approach/Process
A few years ago I would go hiking all the time.  Eventually I heard about a list called the 48 4000 footers and knew I
had to start working on bagging those peaks!  I had made a spreadsheet for myself to track some simple info and thought
it would make for a useful app to other hikers.

Started working on the back-end first, developed an ERD to see what I would need for tables and relationships.  Used the
ever handy scaffold generator to make the resources needed.  Approached the crud actions one at a time and tested
with curl scripts along the way to guide any changes that had to be made.  The ruby console was also helpful for
quickly peeking at the tables to make sure changes were being persisted in the database.

The next (and much larger) challenge was setting up the front end with an Ember framework.  This was still
a very new technology for me to implement, but I thought it would be a worthwhile challenge to
improve my skills as a developer.  Working in such a modularized fashion was difficult, but the concept
of "data down, actions up" makes a lot more sense.  I first set up my 'mountains' routes/components/templates
and then set up the same for "hikes".  Similarly to the back end, I took on one crud action at a time and
would test it in a localhost environment for troubleshooting.

## Major Hurdles

The biggest issue I had with the API was correctly setting up the relationships between the three tables.
Previously used join tables had only contained keys for the other respective tables, but this time
it also contained all of the hike's info.  It was a bit confusing at first to think of "Users have
many mountains through hikes", but everything worked out.

## Future Iterations
In the future I would like to allow users to see/share hikes with other users.  It could be handy
if a user could view another users hike info, such as trails highlights, trails taken, and
about how long the hike would take.  If you were looking for a new mountain to climb, this info
could help narrow the list down.

Another cool feature would be to include a user stats page.  Total mountains climbed, total time
spent hiking, etc.  Being able to filter the list of mountains based on if you've hiked them or not,
coudld also prove useful when trying to check every mountain off of your list.
