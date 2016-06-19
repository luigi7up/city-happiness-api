# README

## INITIAL SETUP
- Clone the repo `git clone git@github.com:jesusdomenech/city-happiness-api.git`
- Setup the database by running, for example: `rake db:drop db:create db:migrate`
- Run `bundle` and follow instructions to install correct ruby version, bundler etc
- Start the server by running `rails s`
- You can access it at **localhost:3000**

## Making requests
All requests towards the APIs endpoints have to contain these headers:

`Authorization: Token token=6xxxxx.x..x.x.x.x.x.x.x.4`

`Content-type: application/json`


