class CookyDecorator < SimpleDelegator
  # delegate_all
  def initialize(cooky)
    @cooky = cooky
    super
  end

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def sale
    @cooky.on_sale ? "on-sale" : "normal"
  end

end
