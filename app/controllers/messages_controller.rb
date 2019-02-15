class MessagesController < ApplicationController
  def index
    @booking = Booking.find(params[:booking_id])
    @messages = policy_scope(@booking.messages).order(created_at: :desc)
    @message = Message.new
    authorize @message
  end

  def create
    @message = Message.new
    @booking = Booking.find(params[:booking_id])
    @message.content = params[:message][:content]
    @message.booking = @booking
    @message.from = current_user
    @message.to = User.find(params[:message][:to])
    authorize @message
    @message.save
    if @message.save
      redirect_to booking_messages_path(@booking)
    else
      render :new
    end
  end
end
