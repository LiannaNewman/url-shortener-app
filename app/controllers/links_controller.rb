class LinksController < ApplicationController
  before_action :authorize_admin!, except: [:index, :show]

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

  def edit
    render 'edit.html.erb'
  end

  def update
    render 'new.html.erb'
  end

  def destroy
    link = Link.find_by(id: params[:id])
    link.destroy
    flash[:success] = "This link has been deleted!"
    redirect_to "visits/links/#{@link.id}"
  end

end
