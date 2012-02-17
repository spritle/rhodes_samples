require 'rho/rhocontroller'
require 'helpers/browser_helper'

class OverviewPageController < Rho::RhoController
  include BrowserHelper

  # GET /OverviewPage
  def index
    @overview_pages = OverviewPage.find(:all)
    render :back => '/app'
  end

  # GET /OverviewPage/{1}
  def show
    @overview_page = OverviewPage.find(@params['id'])
    if @overview_page
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /OverviewPage/new
  def new
    @overview_page = OverviewPage.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /OverviewPage/{1}/edit
  def edit
    @overview_page = OverviewPage.find(@params['id'])
    if @overview_page
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /OverviewPage/create
  def create
    @overview_page = OverviewPage.create(@params['overview_page'])
    redirect :action => :index
  end

  # POST /OverviewPage/{1}/update
  def update
    @overview_page = OverviewPage.find(@params['id'])
    @overview_page.update_attributes(@params['overview_page']) if @overview_page
    redirect :action => :index
  end

  # POST /OverviewPage/{1}/delete
  def delete
    @overview_page = OverviewPage.find(@params['id'])
    @overview_page.destroy if @overview_page
    redirect :action => :index  
  end
end
