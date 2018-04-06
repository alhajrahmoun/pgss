Trestle.resource(:courses) do
  menu do
    item :courses, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
   table do
     column :id
     column :name
     column :created_at, align: :center
     actions
   end

  # Customize the form fields shown on the new/edit views.
  #
   form do |course|
     text_field :name
     select :city, ["kuala lampur", "", ""], label: "Select a city"
     text_field :city
     select :study_mode, ["full time", "part time"], label: "Select a study mode"
     datetime_field :created_at
     collection_select :course_type_id, CourseType.all, :id, :name, label: "Select a Course Type"
     collection_select :degree_id, Degree.all, :id, :name, label: "Select a Degree"
     collection_select :university_id, University.all, :id, :name, label: "Select a University"
  #
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
  #   params.require(:course).permit(:name, ...)
  # end
end