class MessagesController < ApplicationController
    before_action :authenticate_user!

    def index
        @messages = Message.all
        @message = Message.new
    end

    def new
        @message = current_user.messages.new
    end

    def create
        @message = current_user.messages.build(message_params)
    
        respond_to do |format|
          if @message.save
            format.html { redirect_to root_path, notice: 'Message was successfully created.' }
            format.json { render :show, status: :created, location: @message }
          else
            format.html { render :new }
            format.json { render json: @message.errors, status: :unprocessable_entity }
          end
        end
    end

    private

    def message_params
        params.require(:message).permit(:message)
    end
end
