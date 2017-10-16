module Api::V1
  class CommentsController < ApplicationController

    def index
      @comments = Comment.order("created_at DESC")
      render json: @comments
    end

    def create
      comment = Comment.create(comment_params)
       if comment.save
          suggest_doctors(Doctor.find(comment.doctor_id), comment.rating)
          render json: comment, suggest_doctors
       else
          render json: @comment.errors, status: :unprocessable_entity
       end
    end

    def update
      @comment = Comment.find(params[:id])
      @comment.update_attributes(comment_params)
      render json: @comment
    end


    def suggest_doctors(doctor, rating)
      Doctor.within(5, :origin => [doctor.lng, doctor.lat]).count #withing 5
      # same specialty_id
      # average rating that is equal to or higher than passed rating

      ### IN THIS VERSION THE RATING IS PASSED BUT ONCE A AUTHENTICATED USER IS AVAILABLE
      ### WE WOULD WANT TO DECOUPLE THIS TO LOOK UP WHAT THE CURRENT USER RATED THE DOC AT
      ### THIS WAY WE COULD USE THIS FUNCTION IN OTHER AREAS AND LOOK IT UP. WE WOULD
      ### WANT MAKE THE FUNCTION SMARTER SO IT WOULD RETURN SUGGESTIONS BASED ON OTHER THINGS
      ## RATHER THAN SIMPLY BEING TIED TO A COMMENT CREATION

      return suggested_doctors
    end

    # def disable
    #   @comment = Comment.find(params[:id])
    #   @comment.update_attributes(comment_params)
    #   render json: @comment
    # end

    def destroy
      @comment = Comment.find(params[:id])
      if @comment.destroy
        head :no_content, status: :ok
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    end

    private

      def comment_params
        params.require(:comment).permit(:rating, :comment_body)
      end
  end
end
