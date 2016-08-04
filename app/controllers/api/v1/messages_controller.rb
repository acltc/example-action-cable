class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Message.includes(:user).all
    render 'index.json.jbuilder'
  end
end
