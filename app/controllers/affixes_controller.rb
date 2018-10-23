# frozen_string_literal: true

class AffixesController < ApplicationController
  before_action :set_affix, only: :show

  # GET /affixes
  def index
    @affixes = Affix.all

    json_response(@affixes)
  end

  # GET /affixes/:id
  def show
    json_response(@affix)
  end

  private

    def set_affix
      @affix = Affix.find(params[:id])
    end
end
