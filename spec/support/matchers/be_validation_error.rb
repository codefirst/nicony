RSpec::Matchers.define :be_validation_error do
  match {|actual| actual.errors.any? }
end
