class FeedbacksController < ApplicationController

    def create
        feedback = Feedback.create(
            name: params['message']['name'],
            email: params['message']['email'],
            subject: params['message']['subject'],
            message: params['message']['message']
        )    
        if feedback
            FeedbackMailer.send_feedback(feedback).deliver_later
            render json: {
                status: :created
            }
        else
            render json: { status: 500 }
        end
    end

end
