class MessagesController < ApplicationController
  def index
    @messages = Message.includes(:user).all
    render 'index.html.erb'
  end
end
