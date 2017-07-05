class Game < ActiveRecord::Base
  belongs_to :team_bat_first, class_name: 'Team', :foreign_key => 'team_bat_first_id'
  belongs_to :team_field_first, class_name: 'Team', :foreign_key => 'team_field_first_id'

  has_many :innings, inverse_of: :game, dependent: :destroy
  accepts_nested_attributes_for :innings, allow_destroy: true, reject_if: :reject_innings

  def reject_innings(attributed)
    attributed['number'].blank?
  end
end
