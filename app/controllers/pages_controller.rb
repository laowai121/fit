class PagesController < ApplicationController
  def index
  end

  def chairs
  end
  
  def deanery
    if(params[:page] != nil)
      @page_new = Page.find_by_id(1)
      @page_new.body = Page.new(params[:page]).body
      @page_new.save!
    end

    @page_content = Page.find_by_name("deanery")
  end

  def applicant
  end

  def contact
  end
  
end
