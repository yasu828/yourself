class RoomsController < ApplicationController

    def index
    end

    def new
        @room = Room.new        
    end

    def create
        @room = Room.new(room_params)
        if @room.save
            redirect_to room_answers_path(@room)
        else
            render :new
        end
    end



    private

    def room_params
        params.require(:room).permit(:target).merge(user_id: current_user.id)
    end


end
