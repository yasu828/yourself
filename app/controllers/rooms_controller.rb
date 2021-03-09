class RoomsController < ApplicationController
    before_action :authenticate_user!

    def index
        @rooms = Room.all
    end

    def new
        @room = Room.new
    end

    def create
        @room = Room.new(room_params)
        if @room.save
            redirect_to room_path(@room.id)
        else
            render :new
        end
    end

    def show
        @rooms = Room.all
        @room = Room.find(params[:id])
        @answer = Answer.new
        @answer.save
        @answers = @room.answers.includes(:user)
    end

    private

    def room_params
        params.require(:room).permit(:target).merge(user_id: current_user.id)
    end


end
