class Settings
  include Singleton
  include ActiveModel::Validations
  include ActiveModel::Translation
  extend ActiveModel::Translation

  cattr_accessor :fields
  @@fields = [:recipent_email]

  validates :recipent_email, presence: true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}

  def attributes=(attrs = {})
    attrs.each do |k, v|
      send(:"#{k}=", v) if respond_to?(:"#{k}=")
    end
  end

  def update_attributes(attrs = {})
    self.attributes = attrs
    self.save
  end

  def recipent_email
    @recipent_email ||= Content.value('settings:recipent-email')
  end

  def recipent_email_for_save
    recipent_email
  end

  def recipent_email=(value)
    @recipent_email = value
  end

  def to_key
    nil
  end

  def save
    if valid?
      begin
        Content.transaction do
          self.class.fields.each do |f|
            value = if respond_to?(:"#{f}_for_save")
              send :"#{f}_for_save"
            else
              send f
            end

            Content.set("settings:#{f.to_s.dasherize}", value )
          end
        end
        true
      rescue
        false
      end
    else
      false
    end
  end

  def persisted?
    true
  end

  def self.configure
    yield self
  end


  private


end
