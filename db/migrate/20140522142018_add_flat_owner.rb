class AddFlatOwner < ActiveRecord::Migration

  def change
    add_reference :flats, :user, index: true #mettre index pour accéler la recherche
  end
end
