class ClientController < ApplicationController
  
  def index
  end

  def use_cases
    @utterances = Answer.pluck(:utterances).flatten
  end

end