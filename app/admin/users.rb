ActiveAdmin.register User do
  permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :admin, :org_id

  index do
    selectable_column
    id_column
    column :email
    column :org
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :org
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :org
      f.input :admin
      # f.input :password
      # f.input :password_confirmation
    end
    f.actions
  end

end
