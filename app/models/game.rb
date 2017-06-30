class Game < ActiveRecord::Base
  belongs_to :team_bat_first, class_name: 'Team', :foreign_key => 'team_bat_first_id'
  belongs_to :team_field_first, class_name: 'Team', :foreign_key => 'team_field_first_id'
end
