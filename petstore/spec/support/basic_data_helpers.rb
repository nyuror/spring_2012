def get_key
  @@key ||= 0
  @@key += 1
  @@key.to_s
end


def basic_pet_data(options = {})
  {:name => "pet#{get_key}", :species => "dog"}.merge(options)
end

def basic_user_data(options = {})
  {:email => "b#{get_key}@.test.com", :password_digest => "1234x#{get_key}"}.merge(options)
end

def new_valid_user
  u = User.new(:email => "b#{get_key}@test.com")
  u.password_digest = "1234x#{get_key}"
  u
end