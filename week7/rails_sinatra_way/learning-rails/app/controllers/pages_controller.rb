class PagesController < ApplicationController
  def index
    @grandma = params[:grandma]
  end
end
