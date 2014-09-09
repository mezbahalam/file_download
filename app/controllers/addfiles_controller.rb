class AddfilesController < ApplicationController
  before_action :logged_in

  def index
    @addfiles = Addfile.all
  end

  def new
    @addfile = Addfile.new
  end

  def create
    if admin_signed_in?
      @addfile = current_admin.addfiles.build(addfile_params)
    else
      @addfile = current_user.addfiles.build(addfile_params)
    end


    if @addfile.save
      redirect_to addfiles_path, notice: "The file #{@addfile.name} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @addfile = Addfile.find(params[:id])
    @addfile.destroy
    redirect_to addfiles_path, notice:  "The file #{@addfile.name} has been deleted."
  end

  def all_users
  end


  private
  def addfile_params
    params.require(:addfile).permit(:name, :attachment)
  end
end
