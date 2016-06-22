class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def decorate(*args)
    name = args.present? ? args.first : self.class.name
    decorator = name.titleize + "Decorator"
    decorator.constantize.new(self)
  end
end
