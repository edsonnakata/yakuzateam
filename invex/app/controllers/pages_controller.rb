class PagesController < ApplicationController
  before_action :authenticate_user!

  def homepage
    render 'homepage'
  end
end
