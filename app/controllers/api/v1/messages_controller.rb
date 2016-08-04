class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Message.includes(:user).all
    render 'index.json.jbuilder'
  end

  def create
    @message = Message.create(
      user_id: current_user.id,
      body: params[:body]
    )
    ActionCable.server.broadcast 'activity_channel', {
      id: @message.id,
      name: @message.user.name,
      body: @message.body,
      created_at: @message.created_at
    }
    render 'show.json.jbuilder'
  end
end
