json.array!(@my_contact_forms) do |my_contact_form|
  json.extract! my_contact_form, :id, :name, :address
  json.url my_contact_form_url(my_contact_form, format: :json)
end
