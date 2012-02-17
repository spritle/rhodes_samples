require 'rho/rhocontroller'
require 'helpers/browser_helper'

class ListViewController < Rho::RhoController
  include BrowserHelper

  # GET /ListView
  def index
    @list_views = ListView.find(:all)
    render :back => '/app'
  end

  # GET /ListView/{1}
  def show
    @list_view = ListView.find(@params['id'])
    if @list_view
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /ListView/new
  def new
    @list_view = ListView.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /ListView/{1}/edit
  def edit
    @list_view = ListView.find(@params['id'])
    if @list_view
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /ListView/create
  def create
    @list_view = ListView.create(@params['list_view'])
    redirect :action => :index
  end

  # POST /ListView/{1}/update
  def update
    @list_view = ListView.find(@params['id'])
    @list_view.update_attributes(@params['list_view']) if @list_view
    redirect :action => :index
  end

  # POST /ListView/{1}/delete
  def delete
    @list_view = ListView.find(@params['id'])
    @list_view.destroy if @list_view
    redirect :action => :index  
  end
end
