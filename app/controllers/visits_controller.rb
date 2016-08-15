class VisitsController < ApplicationController
  # Every time a visitor visits a shortened link -
  # they've just "created" a visit.
  def create
    if link.valid?
      visit = Visit.new(link_id: current_link_id, ip_address: request.remote_ip)
      link_visits = []
      link_visits_count = 0
      visit.each do
        link_visits << visit.link_id && visit.ip_address
        link_visits_count += 1
      end
      visit.save
    else
      render raise ActionController::RoutingError.new('Not Found')
    end
  end
end
