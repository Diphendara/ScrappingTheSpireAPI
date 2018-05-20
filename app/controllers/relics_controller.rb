class RelicsController < ApplicationController
  before_action :set_relic, only: [:show]

  # GET /relics
  def index
    @relics = Relic.all
    json_response(@relics)
  end

  # GET /relics/:id
  def show
    json_response(@relic)
  end

  private

  def relic_params
    # whitelist params
    params.permit(:name, :rarity, :description, :lore)
  end

  def set_relic
    @relic = Relic.find(params[:id])
  end
end
