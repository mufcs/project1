class PagesController < ApplicationController
  def home
  end

  def new
    @page = Page.new
    if request.post?
    page = page.create user_params
    redirect_to "/pages/home"
    end
  end
end
