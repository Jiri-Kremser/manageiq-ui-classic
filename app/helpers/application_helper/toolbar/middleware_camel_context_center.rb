# noinspection RubyArgCount
class ApplicationHelper::Toolbar::MiddlewareCamelContextCenter < ApplicationHelper::Toolbar::Basic
  button_group('middleware_camel_context_monitoring', [
    select(
      :middleware_camel_context_monitoring_choice,
      'product product-monitoring fa-lg',
      t = N_('Monitoring'),
      t,
      :items => [
        button(
          :middleware_camel_context_perf,
          'product product-monitoring fa-lg',
          N_('Show Capacity & Utilization data for this Camel Context'),
          N_('Utilization'),
          :url       => '/show',
          :url_parms => '?display=performance')
      ]
    ),
  ])
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
