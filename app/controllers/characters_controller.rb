class CharactersController < ApplicationController

  def new
    @character = Character.new
    @character.character_race_association = CharacterRaceAssociation.new 
    Ability.all.each do |ability|
      @character.ability_scores << AbilityScore.new(ability_id: ability.id)
    end 
  end

  def create
    @character = Character.new character_params

    if @character.save!
      redirect_to character_path(@character)
    else
      render :new
    end
  end

  def show
    @character = Character.find params[:id]
  end

  def edit
     @character = Character.find params[:id]
  end

  private

  def character_params
    params[:character].permit(
      :name,
      character_race_association_attributes: [
        :id,
        :race_id
      ],
      ability_scores_attributes: [
        :id,
        :ability_id,
        :level_score,
        :experience_score
      ]
    )
  end

end
