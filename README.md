# README

## Setup
If you've freshly cloned the repo:

0. `rails db:create db:migrate`

Then always: 

1. `bundle install`
2. `yarn install`

## Development
`rails s` 
> will start `rails` and `rails-react`

`./bin/webpack-dev-server` 
> to enable hot-reloading for JS files (i.e. React)


## Implementation Notes
### Routing
This repo uses React and Rails with a static controller that is routed to by a catchall. The static controller serves a page that will mount React to the dom, and where further non-api routes are handled client side. 

The catchall has a lambda that excludes activeStorage paths so the catchall doesn't screw up `GET`-ing stored stuff
