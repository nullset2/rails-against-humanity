class PlayerCardsController < ApplicationController
  before_action :set_player_card, only: [:show, :edit, :update, :destroy]

  # GET /player_cards
  # GET /player_cards.json
  def index
    @player_cards = PlayerCard.all
  end

  # GET /player_cards/1
  # GET /player_cards/1.json
  def show
  end

  # GET /player_cards/new
  def new
    @player_card = PlayerCard.new
  end

  # GET /player_cards/1/edit
  def edit
  end

  # POST /player_cards
  # POST /player_cards.json
  def create
    @player_card = PlayerCard.new(player_card_params)

    respond_to do |format|
      if @player_card.save
        format.html { redirect_to @player_card, notice: 'Player card was successfully created.' }
        format.json { render :show, status: :created, location: @player_card }
      else
        format.html { render :new }
        format.json { render json: @player_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_cards/1
  # PATCH/PUT /player_cards/1.json
  def update
    respond_to do |format|
      if @player_card.update(player_card_params)
        format.html { redirect_to @player_card, notice: 'Player card was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_card }
      else
        format.html { render :edit }
        format.json { render json: @player_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_cards/1
  # DELETE /player_cards/1.json
  def destroy
    @player_card.destroy
    respond_to do |format|
      format.html { redirect_to player_cards_url, notice: 'Player card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_card
      @player_card = PlayerCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_card_params
      params.require(:player_card).permit(:user_id, :game_id, :answer_id)
    end
end
