class ManagersController < ApplicationController
  before_action :set_manager, except: %i[new index create]

  def index
    @managers = Manager.all
  end

  def show
    set_manager
  end

  def new
    @manager = Manager.new
    render '_form', layout: false
  end

  def create
    @manager = Manager.new manager_params
    if @manager.save
      flash[:notice] = "Manager created"
      redirect_to manager_path(@manager)
    else
      flash[:alert] = @manager.errors.full_messages.join(',')
    end
  end

  def edit
    set_manager
    render '_form', layout: false
  end

  def update
    byebug
    set_manager
    if @manager.update manager_params
      flash[:notice] = "Customer updated"
      @success = true
      render 'partials/_generic_js_response', layout: false
    else
      flash[:alert] = @manager.errors.full_messages.join(',')
    end
  end

  def destroy_manager
    set_manager
    byebug
    if @manager.destroy
      redirect_to managers_path, alert: "Manager deleted"
    else
      flash[:alert] = @manager.errors.full_messages.join(',')
    end
  end

  private
    def set_manager
      @manager = Manager.find(params[:id])
    end

    def manager_params
      params.require(:manager).permit(:first_name, :last_name, :notes, :email, :phone, :city, :age)
    end
end
