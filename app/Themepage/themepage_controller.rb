require 'rho/rhocontroller'
require 'helpers/browser_helper'

class ThemepageController < Rho::RhoController
  include BrowserHelper

  # GET /Themepage
  def index
    @themepages = Themepage.find(:all)
    render :back => '/app'
  end

  # GET /Themepage/{1}
  def show
    @themepage = Themepage.find(@params['id'])
    if @themepage
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /Themepage/new
  def new
    @themepage = Themepage.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /Themepage/{1}/edit
  def edit
    @themepage = Themepage.find(@params['id'])
    if @themepage
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /Themepage/create
  def create
    @themepage = Themepage.create(@params['themepage'])
    redirect :action => :index
  end

  # POST /Themepage/{1}/update
  def update
    @themepage = Themepage.find(@params['id'])
    @themepage.update_attributes(@params['themepage']) if @themepage
    redirect :action => :index
  end

  # POST /Themepage/{1}/delete
  def delete
    @themepage = Themepage.find(@params['id'])
    @themepage.destroy if @themepage
    redirect :action => :index  
  end
  def theme_a
    
  end
  def theme_b
      
  end
  def theme_c
       
   end
  def theme_d
       
   end
  def theme_e
       
   end
   
end
