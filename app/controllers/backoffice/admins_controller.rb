class Backoffice::AdminsController < BackofficeController
  before_action :set_admin, only: [:edit, :update]
  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(params_admin)
    if @admin.save
      redirect_to backoffice_admins_path, notice: "O adminsitrador (#{@admin.email})"
    else
      render :new
    end
  end

  def edit; end

  def update
    if admin.update(params_admin)
      redirect_to backoffice_admins_path, notice: "O administrador (#{@admin.email})"
    else
      render :new
    end
  end

  private

  def set_admin
    @admin = Admin.find(params[:id])
  end

  def params_admin
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end
