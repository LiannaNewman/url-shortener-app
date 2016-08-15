class Visit < ApplicationRecord
  belongs_to :link

  def create
    visit = Visit.new(link_id: current_link_id, ip_address: request.remote_ip)
    link_visits = []
    link_visits_count = 0
    link.each do |visit|
      link_visits << (link_id,ip_address)
      link_visits_count += 1
    end
    visit.save
  end
  
end
