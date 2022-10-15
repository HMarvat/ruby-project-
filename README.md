# README
## Test Project API

### Development Setup
- Ruby version 2.7.1
- Rails version 6.0.4
### System Level Dependencies:
- PostgreSQL 14.1
### Project Level Dependencies

Run this command to install app dependecy packages.

- bundle install
### Setting up the Database

Run the following commands in terminal after setting up your database.

Note: You might need to change your host in config/database.yml file to make it communicate your localhost and then change it again to make application communicat your database docker container using db which is your service name as a host.

Also create postgres user with same password as mentioned in ENV in your local machine while running the project if needed.

```
rails db:create
```
```
rails db:migrate
```
```
rails db:seed
```
### Start the Rails Server
```
rails server
```
### Bonus Section

As mentioned in the email, if you have completed everything required in the email then you can go ahead and convert this docker-compose file in simple k8's yaml files and test is on minikube or even create a custom helm chart using those yaml files.

Note: Anyone who will complete bonus section too will get more marks, but always remember only attempt this bonus section if you are 200% confident about accuracy and code quality of previous task.
