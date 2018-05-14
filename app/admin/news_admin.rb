Trestle.resource(:news) do
  menu do
    item :news, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
   table do
     column :id
     column :title
     column :description
     column :created_at, align: :center
     column :updated_at, align: :center
     column (:image) { |i| image_tag(i.image.url, size: '100x100') unless i.image.blank? }
     actions
   end

  # Customize the form fields shown on the new/edit views.
  #
   form do |news|
     text_field :title
     text_area :description
     datetime_field :created_at
     form_group :image, help: "Upload an image.." do
      concat image_tag(news.image.url, size: '100x100') unless news.image.blank?
      raw_file_field :image
    end
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
  #   params.require(:news).permit(:name, ...)
  # end
end
