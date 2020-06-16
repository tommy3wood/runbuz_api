class Api::RunsController < ApplicationController

  def index
    @runs = Run.all
    render 'index.json.jb'
  end

  def create
    @run = Run.new(
                    distance: params[:distance],
                    time: params[:time],
                    user_id: params[:user_id],
                    comments: params[:comments],
                        )
    if @run.save
      render 'show.json.jb'
    else
      render json: {errors: @runs.errors.full_messages}, status: :bad_request
    end

  end

  def show
    @run = Run.find(params[:id])

    render 'show.json.jb'
  end

  def update
    
  end

  def destroy
    run = Run.find(params[:id])
    run.destroy
    render json: {message: "no run found"}
  end

end
