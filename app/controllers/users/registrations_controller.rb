class Users::RegistrationsController < Devise::RegistrationsController
  
  def create
    
    super do |resource|
      if param[:plan]
        resource.plan_id = param[:plan]
        if resource.plan_id ==2
          resourece.save_with_payment
        else
          resource.save
        end
        end
      end
    end
    
  end
  
  
end