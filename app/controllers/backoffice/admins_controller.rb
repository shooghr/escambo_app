class Backoffice::AdminsController < BackofficeController
  before_action :set_admin, only: %w[edit update destroy]
  after_action :verify_authorized, only: :new
  after_action :verify_policy_scoped, only: :index
  
  def index
    # @admins = Admin.all
    @admins = policy_scope(Admin)
  end

  def new
    @admin = Admin.new
    authorize @admin
  end

  def create
    @admin = Admin.new(params_admin)
    if @admin.save
      redirect_to backoffice_admins_path,
                  notice: "O administrador (#{@admin.email})"
    else
      render :new
    end
  end

  def edit; end

  def update
    if @admin.update(params_admin)
      AdminMailer.update_email(current_admin, @admin).deliver_now
      redirect_to backoffice_admins_path,
                  notice: "O administrador (#{@admin.email})"
    else
      render :new
    end
  end

  def destroy
    admin_email = admin.email
    if @admin.destroy
      redirect_to backoffice_admins_path,
                  notice: "O administrador (#{@admin_email})
                           foi excluído com sucesso"
    else
      render :index
    end
  end

  private

  def set_admin
    @admin = Admin.find(params[:id])
  end

  def params_admin
    params[:admin].except!(:password, :password_confirmation) if password_blank?
    if @admin.blank?
      params.require(:admin).permit(:name, :email, :role, :password, :password_confirmation)
    else
      params.require(:admin).permit(policy(@admin).permitted_attributes)
    end
  end

  def password_blank?
    params[:admin][:passwd] && params[:admin][:password_confirmation]
  end
end
