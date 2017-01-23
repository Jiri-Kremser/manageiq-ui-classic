# noinspection RubyArgCount
class ApplicationHelper::Toolbar::MiddlewareCamelContextsCenter < ApplicationHelper::Toolbar::Basic
  button_group('middleware_camel_context_policy', [
    select(
      :middleware_camel_context_policy_choice,
      'fa fa-shield fa-lg',
      t = N_('Policy'),
      t,
      :enabled => 'false',
      :items => [
        button(
          :middleware_camel_context_tag,
          'pficon pficon-edit fa-lg',
          N_('Edit Tags for this Camel Context'),
          N_('Edit Tags')),
      ]
    ),
  ])
end
