Trestle.resource(:universities) do
  menu do
    item :universities, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
   table do
     column :id
     column :name
     column :university_type
     column :created_at, align: :center
     actions
   end

  # Customize the form fields shown on the new/edit views.
  #
   form do |university|
     text_field :name
     select :university_type, ["government", "private", "semi"], label: "Basic Select Field"
     datetime_field :created_at
  
  #   row do
  #     col(xs: 6) { datetime_field :updated_at }
  #     col(xs: 6) { datetime_field :created_at }
  #   end
   end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:university).permit(:name, ...)
  # end
end
