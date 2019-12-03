class ContractsController < ApplicationController
  before_action :set_contract, only: %i[show send_facturation]
  before_action :set_project, only: %i[new create]

  def index
    @contracts = Contract.all
  end

  def show
    perc_investment
    @uhi = @perc * @contract.project.uhi
    @water_infiltration = @perc * @contract.project.water_infiltration
    @biodiversity = @perc * @contract.project.biodiversity
    @local_food = @perc * @contract.project.local_food
  end

  def new
    @contract = Contract.new
    @marker = {
      lat: @project.latitude,
      lng: @project.longitude
    }
  end

  def create
    @contract = Contract.new(contract_params)
    @contract.project = @project
    @contract.user = current_user
    @contract.status = 'Invoice sent'
    @contract.save
    redirect_to contract_path(@contract)
  end

  def send_facturation
    mail = UserMailer.with(user: current_user, contract: @contract).facturation.deliver_now
    redirect_to contract_path(@contract)
  end


  private

  def set_contract
    @contract = Contract.find(params[:id])
  end

  def set_project
    @project = Project.find(params[:project_id])
  end

  def contract_params
    params.require(:contract).permit(:investment)
  end

  def perc_investment
    @perc = @contract.investment.fdiv(@contract.project.investment_cap)
  end
end
