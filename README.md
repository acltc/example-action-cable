# README

This is an example Rails 5 chat application demonstrating ActionCable (real time updates using websockets) in the simplest possible way. If you run the app on multiple browsers, you can see that when you add a new message, it appears on every client without a page refresh. This repository is designed to help someone who is familiar with Rails 4 and Angular 1 to integrate real time updates with minimal decoration.

This example does not cover best practice features (such as using jobs to prevent broadcasting large amounts of messages from blocking the app, using partials to share code between client and server, using commit hooks to broadcast on saving models, etc.) To better understand how to use ActionCable in practice, I would recommend the following resources:

* [DHH's demo of ActionCable](https://www.youtube.com/watch?v=n0WUjGkDFS0)
* [Event Notifications in Rails 5](https://www.onehub.com/blog/2016/02/18/event-notifications-in-rails-5-with-actioncable/)

Note that these tutorials are very new, there have been some minor changes since they were made.
