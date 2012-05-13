class PagesController < ApplicationController
  def index
    @pages = Page.find_all_by_user_id(current_user.id)
  end

  def new
    @page = Page.new(:user_id => current_user.id)
  end

  def create
    @page = Page.new(params[:page])
    if @page.save
      flash[:notice] = "successfully saved"
      redirect_to page_path(@page)
    else
      flash[:error] = "not saved"
      render :new
    end
  end

  def update
    @page = Page.find(params[:id])

    if @page.update_attributes(params[:page])
      flash[:notice] = "successfully saved"
      redirect_to page_path(@page)
    else
      flash[:error] = "not saved"
      render :edit
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def show
    @page = Page.find(params[:id])
  end

  def body
    @page = Page.find(params[:id])
  end
end
