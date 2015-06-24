require 'set'

class Array
	
  def except(*value)
    self - Array.wrap(value.flatten)
  end

  def included_in?(items)
    items.to_set.superset?(self.to_set)
  end
end