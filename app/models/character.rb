# frozen_string_literal: true

# :nodoc:
class Character < ApplicationRecord
  belongs_to :game
  belongs_to :player, optional: true
  validates :name, presence: true
  validates_format_of :name, with: /\A[a-zA-Z\d ]*\z/i

  def image_path
    asset_path(image_name, type: :image)
  end

  private

  delegate :asset_path, to: :action_controller_base_helpers
  delegate :find_asset, to: :rails_assets

  def asset_path(*args, &block)
    action_controller_base_helpers.asset_path(*args, &block)
  end

  def action_controller_base_helpers
    ActionController::Base.helpers
  end

  def rails_assets
    Rails.application.assets
  end

  def image_for_name_exists?
    find_asset(name).present?
  end

  def image_name
    if image_for_name_exists?
      name
    else
      'Complete'
    end
  end
end
