class RoomsController < ApplicationController
    before_action :authenticate_user!
    before_action :room_all,  only: [:index, :new, :show]

    def index
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
        @room = Room.find(params[:id])
        @answer = Answer.create
        @answers = @room.answers.includes(:user)
    end

    private

    def room_params
        params.require(:room).permit(:target).merge(user_id: current_user.id)
    end

    def room_all
        @rooms = Room.all
    end

end
