ClaimedFood.delete_all
Food.delete_all
User.delete_all

raja = User.new(
  username: 'Raja',
  email: 'me@me.com',
  password: 'password'
)

raja.save

joe = User.new(
  username: 'Joe',
  email: 'joe@joe.com',
  password: 'password'
)

joe.save

beans = Food.new(
  name: 'beans',
  category: 'canned',
  donor: raja
)

beans.save

rice = Food.new(
  name: 'rice',
  category: 'canned',
  donor: raja
)

rice.save

ClaimedFood.create(
  food: rice,
  user: joe
)

ClaimedFood.create(
  food: beans,
  user: joe
)

spam = Food.new(
  name: 'spam',
  category: 'canned',
  donor: joe
)

spam.save

tuna = Food.new(
  name: 'tuna',
  category: 'canned',
  donor: joe
)

tuna.save
