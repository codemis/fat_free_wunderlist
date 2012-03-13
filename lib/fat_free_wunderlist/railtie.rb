module FatFreeWunderlist
  class Railtie < Rails::Railtie
    
    initializer 'FatFreeWunderlist.controller_additions' do
 			ActionController::Base.send :include, FatFreeWunderlist::ControllerAdditions
 			ActionController::Base.send :after_filter, :send_mailer
    end
    
  end
end