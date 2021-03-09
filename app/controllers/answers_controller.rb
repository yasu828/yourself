class AnswersController < ApplicationController

    def index
    end


    def create
        @answer = Answer.new(ans_params)
        @answer.save
        @room = Room.find(params[:room_id])
        
        redirect_to room_path(@room.id)
    end


    private

    def ans_params
        params.require(:answer).permit(:ans,:point,:room_id,:user_id).merge(user_id: current_user.id, room_id: params[:room_id])
    end
end
