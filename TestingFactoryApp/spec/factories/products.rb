FactoryBot.define do
  factory :product do
    name { "MyString" }
    user #{ nil } by removing the nil, we allow the factory robot to set the user to a default association
    # By removing the nil value from the user association in our :product factory, a default user from the :user factory will be created every time we build a product. So now when we build our :product we no longer need to specify a user value.
  end
end
