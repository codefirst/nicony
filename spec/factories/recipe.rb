FactoryGirl.define do
  factory :recipe do
    name 'hello'
    tasks <<END
    task :hello do
      queue! %[echo hello]
    end
END
  end
end

