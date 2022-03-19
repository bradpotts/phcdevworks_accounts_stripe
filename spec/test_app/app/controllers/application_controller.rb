class ApplicationController < ActionController::Base

    # Load Requried Helper Files
    helper PhcdevworksActiveMenus::Engine.helpers
    helper PhcdevworksNotifications::Engine.helpers
    helper PhcdevworksTitleseo::Engine.helpers

end
