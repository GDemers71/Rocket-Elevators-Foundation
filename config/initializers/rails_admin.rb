# config/initializers/rails_admin.rb
RailsAdmin.config do |config|

  config.authenticate_with do
    warden.authenticate! scope: :user
  end

  config.current_user_method(&:current_user)

  # config.parent_controller = "Admin::BaseController"

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                  # mandatory
    index                      # mandatory
    new
    export
    history_index
    bulk_delete
    # member actions
    show
    edit
    delete
    history_show
    show_in_app
  end
end