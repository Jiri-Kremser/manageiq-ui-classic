module MiddlewareCamelEntityHelper::TextualSummary
  def textual_group_properties
    %i(name entity_type nativeid)
  end

  def textual_group_relationships
    # Order of items should be from parent to child
    %i(middleware_camel_context)
  end

  def textual_entity_type
    @record.entity_type
  end

  def textual_middleware_camel_context
    @record.middleware_camel_context
  end
end
