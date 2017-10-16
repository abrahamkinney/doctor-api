module Api::V1
  class CommentsController < ApplicationController

    def index
      @comments = Comment.order("created_at DESC")
      render json: @comments
    end

    def create
      comment = Comment.create(comment_params)
       if comment.save
          doctor_list = suggest_doctors(Doctor.find(comment.doctor_id), comment.rating)
          render json: comment, doctor_list
       else
          render json: @comment.errors, status: :unprocessable_entity
       end
    end

    def update
      @comment = Comment.find(params[:id])
      @comment.update_attributes(comment_params)
      render json: @comment
    end

    ############### NOTES FOR AUSTIN ########################
    ## The suggest_doctors function is only here for the sake of brevity so you only have to look at this code
    ## This belongs in the model or a helper. Also, I would think in well designed app it would be
    ## a good idea to decouple the filtering logic into reusable independant functions that also
    ## don't rely and are built to service just this create function. Making it more of a modular
    ## little service.
    ##
    ## Also this. would need to
    ##
    ## I used the geokit-rails gem for location (the config is in the doctors model).
    ## I am finding suggested doctors based on 3 criteria:
    ##  1) within a 5 mile radius of the currently commented doctor
    ##  2) has the same specialty (docs only have one in this set up - not sure if they would have multiple?)
    ##  1) has a rating equal to or greater than the current rating given to currrent doc

    def suggest_doctors(doctor, rating)
      doctor = ActiveRecord::Base::sanitize(params[:doctor])
      rating = ActiveRecord::Base::sanitize(rating)

      specialty__distance_matches = doctor.specialties.first.doctors.within(5, :origin => [doctor.lat, doctor.lng])

      query = "
        SELECT
           doctors.id,
           doctors.name,
           doctors.lat,
           doctors.lng,
           doctors.address,
           doctors.group_id,
           doctors.created_at,
           doctors.updated_at,
           AVG(comments.rating) AS score
        FROM
          comments
        INNER JOIN doctors
          on comments.doctor_id = doctors.id
        GROUP BY doctors.id,
          doctors.name,
          doctors.lat,
          doctors.lng,
          doctors.address,
          doctors.group_id,
          doctors.created_at,
          doctors.updated_at,
          comments.doctor_id
        HAVING score >= rating
      "
      rated_matches = Doctor.find_by_sql(query)
    end

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
