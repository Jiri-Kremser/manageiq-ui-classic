# noinspection RubyArgCount
class ApplicationHelper::Toolbar::MiddlewareCamelEntitiesCenter < ApplicationHelper::Toolbar::Basic
  button_group('middleware_camel_entity_monitoring', [
    select(
      :middleware_camel_entity_monitoring_choice,
      'product product-monitoring fa-lg',
      t = N_('Monitoring'),
      t,
      :items => [
        button(
          :middleware_camel_entity_perf,
          'product product-monitoring fa-lg',
          N_('Show Capacity & Utilization data for this Camel entity'),
          N_('Utilization'),
          :url       => '/show',
          :url_parms => '?display=performance')
      ]
    ),
  ])
end
