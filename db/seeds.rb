@user = User.create(name: 'Vasya')
@user = User.create(name: 'Petya')
@user = User.create(name: 'Kolya')

@users = User.all

@users.each do |u|
  5.times do
    u.articles.create(title: '123', text: 'fefdszfvsdfdfsd')
  end
end

@articles = Article.all

@articles.each do |a|
  10.times do
    a.comments.create(text: 'dsadasdsadas', user_id: a.user_id)
  end
end
