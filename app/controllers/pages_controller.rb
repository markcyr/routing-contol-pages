class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "This is the welcome page"
  end

  def about
      @header = "This is the cool kids page"
   end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]

    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
  redirect_to "/"
  end

  def secret
    secret_word = params[:magic_word]
        if secret_word == 'password'
      redirect_to '/secrets'
        else
          flash[:alert] =  "Sorry, you're not authorized to see that page!"
          redirect_to "/"
    end
  end

end
