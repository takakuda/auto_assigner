module AutoAssigner
  class Railtie < ::Rails::Railtie
    initializer 'auto_assigner' do |app|
      ActiveSupport.on_load :action_controller do
        require 'auto_assigner/params_loader/action_controller'
      end 
    end
  end
end
