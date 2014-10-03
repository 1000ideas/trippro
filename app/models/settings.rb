class Settings
  include Singleton
  include ActiveModel::Validations
  include ActiveModel::Translation
  extend ActiveModel::Translation

  cattr_accessor :fields
  @@fields = [:action_status]

  @@action_statuses = ['progress', 'finished', 'results']

  def statuses_for_select
    @@action_statuses.map do |s|
      [I18n.t(s, scope: 'settings.statuses'), s]
    end
  end


  validates :action_status, presence: true

  def attributes=(attrs = {})
    attrs.each do |k, v|
      send(:"#{k}=", v) if respond_to?(:"#{k}=")
    end
  end

  def update_attributes(attrs = {})
    self.attributes = attrs
    self.save
  end

  def action_status
    @action_status ||= Content.value('settings:action-status') || @@action_statuses.first
  end

  def action_status=(value)
    @action_status = value
  end

  def to_key
    nil
  end

  def competition_end?
    %w(finished results).include?(action_status)
  end

  def show_results?
    'results' == action_status
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
