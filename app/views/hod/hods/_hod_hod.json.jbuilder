json.extract! hod_hod, :id, :name, :email, :password_hash, :password_salt, :department_id, :sex, :phone, :created_at, :updated_at
json.url hod_hod_url(hod_hod, format: :json)
