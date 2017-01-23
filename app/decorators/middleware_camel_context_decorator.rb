class MiddlewareCamelContextDecorator < Draper::Decorator
  delegate_all
  include MiddlewareDecoratorMixin

  def fonticon
    nil
  end

  # Determine the icon
  def item_image
    'placeholder'.freeze
  end

end
