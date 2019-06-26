module FirmwareBinaryHelper::TextualSummary
  include TextualMixins::TextualName
  include TextualMixins::TextualDescription

  def textual_group_properties
    TextualGroup.new(
      _("Properties"),
      %i[name description version created updated]
    )
  end

  def textual_group_relationships
    TextualGroup.new(_("Relationships"), %i[firmware_registry firmware_constraints])
  end

  def textual_created
    {:label => _("Created On"), :value => format_timezone(@record.created_at)}
  end

  def textual_updated
    {:label => _("Updated On"), :value => format_timezone(@record.updated_at)}
  end

  def textual_version
    @record.version
  end

  def textual_firmware_registry
    textual_link(@record.firmware_registry)
  end

  def textual_firmware_constraints
    textual_link(@record.firmware_constraints)
  end
end
