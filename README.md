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

## Endpoints
### Create happiness status

Info: Creates a new status for a user.

**POST /happinesses**

Payload expected:
`{"device_id":"x123x123","feeling_like":"2","lat":"40.416775","lng":"-3.703790"}`


