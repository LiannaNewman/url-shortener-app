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
    link = Link.new
    link.standardize_target_url!
    render 'new.html.erb'
  end
end
