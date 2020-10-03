class StaticPagesController < ApplicationController
    def root
        redirect_to "/questions/#{Question.first.id}"
    end
end