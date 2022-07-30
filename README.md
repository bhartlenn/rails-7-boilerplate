# README

This is a very simple boilerplate rails 7 app that includes a simple pages controller for pages like a homepage, and it has devise installed, and setup to handle turbo style flash messages.

* Ruby version: 3.1.2

* Rails version: 7.0.3.1

* Database: MySQL 5.7.32

To add a turbo_stream flash message to a chatroom_controller's update action you can add like the following example to the actions respond_to format block:

    format.turbo_stream { flash.now[:notice] = "[Model] was successfully updated." }

Then create a new file views/chatrooms/update.turbo_stream.erb and paste the following line in to render the flash message from the controller action

    <%= render_turbo_stream_flash_messages %>