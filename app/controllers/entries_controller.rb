class EntriesController < ApplicationController
  respond_to :json, except: [:todo, :project, :book_list]
 
  def index
    respond_with Entry.all
  end

  def show
    respond_with Entry.find(params[:id])
  end

  def create
    respond_with Entry.create(params[:entry])
  end

  def update
    respond_with Entry.update(params[:id], params[:entry])
  end

  def destroy
    respond_with Entry.destroy(params[:id])
  end
  
  def todo
    render layout: false
  end

  def project
    render layout: false
  end

  def book_list
    render layout: false
  end
end
