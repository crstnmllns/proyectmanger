class PagesController < ApplicationController
  def index

  end

  def dashboard
    @posts = Post.all

    if params[:state].present?
      @posts = Post.where(state: params[:state])

    end

  end

  def create
      Post.create(name: params[:name], description: params[:description], date_in: params[:date_in], date_out: params[:date_out], state: params[:state])
  end
end
