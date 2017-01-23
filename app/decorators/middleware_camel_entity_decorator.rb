class MiddlewareCamelEntityDecorator < Draper::Decorator
  delegate_all
  include MiddlewareDecoratorMixin

  def fonticon
    'placeholder'.freeze
  end

  # Determine the icon
  def item_image
    'placeholder'.freeze
  end

end
