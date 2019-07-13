class MainController < ApplicationController
  def index
    @posts = Post.all.order(:id)
  end
end
