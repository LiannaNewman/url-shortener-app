class VisitsController < ApplicationController

  def create
    visit_count = 0
    visit.each do
      if visit
      visit_count +=
      end
    end
    # Every time a visitor visits a shortened link -
    # they've just "created" a visit.
  end
end
