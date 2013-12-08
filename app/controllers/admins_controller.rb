class AdminsController < ApplicationController
  def deanery_editor
  	#if session[:id] != nil
    #  	@user = User.find(session[:id])
    #else
    #	@user = nil
    #  	redirect_to :action=>"deanery", :controller=>"pages"
    #end
    @form_of_study = params[:form_of_study]
  end

  def static_pages_editor
    #if session[:id] != nil
    #   @user = User.find(session[:id])
    #else
    # @user = nil
    #   redirect_to :action=>"deanery", :controller=>"pages"
    #end
    @page = Page.new
    @body = Page.find_by_id(1).body
  end
end
