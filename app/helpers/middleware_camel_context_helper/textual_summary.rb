module MiddlewareCamelContextHelper::TextualSummary
  def textual_group_properties
    %i(name nativeid)
  end

  def textual_group_relationships
    # Order of items should be from parent to child
    %i(ems middleware_server middleware_camel_entities)
  end
end
