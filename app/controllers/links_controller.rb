class LinksController < ApplicationController

  def index
    render 'index.html.erb'
  end

  def create
    link = Link.new
    link.save
    render 'new.html.erb'
  end

  def new
    render 'new.html.erb'
  end
end
