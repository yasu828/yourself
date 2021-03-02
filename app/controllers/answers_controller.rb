class AnswersController < ApplicationController
    before_action :authenticate_user!

    def index
        @answer = Answer.new
        @room = Room.find(params[:room_id])
    end

    def create
        @room = Room.find(params[:room_id])
        @answer = @room.answers.new(answer_params)
        
        if @answer.save
            # render json:{post: @answer}
          redirect_to root_path
        else
          render :index
        end        
    end

    def show
        @answer = Answer.find(params[:id])
    end


    private

    def answer_params
        params.permit(:answer).merge(user_id: current_user.id)
    end
end
