class RightAnswersController < ApplicationController
    before_action :authenticate_user!

    def index
        @right_answer = RightAnswer.new(right_answer_params)
        @room = Room.find(params[:room_id])
        @right_answers = @room.right_answers.includes(:user)
    end

    def new
    end


    def create
        
        @room = Room.find(params[:room_id])
        if @room.right_answers.create(
            user_id: current_user.id,
            rightans: right_answer_params[:right_answer][:rightans]
          )
          redirect_to room_answers_path(@room)
        else
            @right_answers = @room.rightans.includes(:user)
            render :index
        end
        #     render json:{post: @answer}
        #   redirect_to root_path(@room)
        # else
        #     @messages = @room.messages.includes(:user)
        #   render :index
        # end
    end


    private

    def right_answer_params
        params.permit(:room_id, right_answer:[:rightans]).merge(user_id: current_user.id)
    end
end
