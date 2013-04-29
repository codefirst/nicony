module CooksHelper
  def for_options(xs, field)
    xs.map {|x| [ x[field], x.id ] }
  end
end
