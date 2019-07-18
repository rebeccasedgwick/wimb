class MainController < ApplicationController
  def index
    @posts = Post.all.order(:id)
    @courts = Court.all.order(:id)
  end
end
