ActiveAdmin.register Flat do

  permit_params do
    [ :user_id, :title, :description, :address, :dayprice ]
  end

end
