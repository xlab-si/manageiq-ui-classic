module FirmwareRegistryHelper::TextualSummary
  include TextualMixins::TextualName

  def textual_group_properties
    TextualGroup.new(_("Properties"), %i[name last_refresh_on last_refresh_error created updated])
  end

  def textual_group_relationships
    TextualGroup.new(_("Relationships"), %i[firmware_binaries])
  end

  def textual_last_refresh_on
    {:label => _("Last Refresh"), :value => format_timezone(@record.last_refresh_on)}
  end

  def textual_last_refresh_error
    @record.last_refresh_error
  end

  def textual_created
    {:label => _("Created On"), :value => format_timezone(@record.created_at)}
  end

  def textual_updated
    {:label => _("Updated On"), :value => format_timezone(@record.updated_at)}
  end

  def textual_firmware_binaries
    textual_link(@record.firmware_binaries)
  end
end
