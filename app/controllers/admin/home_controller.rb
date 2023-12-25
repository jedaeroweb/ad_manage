class Admin::HomeController < Admin::AdminController
  load_and_authorize_resource
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  def layout
    if(params[:no_layout])
      return false
    else
      return 'admin/application'
    end
  end

  def index

  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_admin
    @admin = Admin.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def admin_params
    params.require(:admin).permit(:name, :email, :enable)
  end
end