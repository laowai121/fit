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


  def deanery_full_time
    @form_of_study = "full_time"

    if(params[:page] != nil)
      @post_new = Post.new(params[:page])
      @post_new.form_of_study = params[:form_of_study]
      @post_new.category = params[:category]
      @post_new.save!
    end

    @ad = Post.find_all_by_form_of_study("full_time")
  end

  def deanery_correspondence
    @form_of_study = "correspondence"

    if(params[:page] != nil)
      @post_new = Post.new(params[:page])
      @post_new.form_of_study = params[:form_of_study]
      @post_new.category = params[:category]
      @post_new.save!
    end

    @ad = Post.find_all_by_form_of_study("correspondence")
  end

  def applicant
  end

  def contact
  end
  
end
