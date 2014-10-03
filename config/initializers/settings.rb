L::Settings.configure do |config|
  # Text fields
  # config.create_text_field :name, :name_2

  # Text field with defaut value
  # config.create_text_field name: 'default'

  # Boolean field
  # config.create_boolean_field :terms

  # Date/Time field
  # config.create_time_field :terms

  # Create your own field
  # config.fields << :name
  # config.define_method(:name) do
  # # getter contents...
  # end
  # config.define_method(:"#{name}_for_save") do
  # # getter contents... (saved in database)
  # end
  # config.define_method(:"#{name}=") do |value|
  # # setter contents...
  # end

  # Create your own methods
  # config.define_method(:name) do |args|
  # # contents...
  # end
end
