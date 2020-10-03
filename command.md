# 新規作成
```
rails _6.0.3_ new simple_tasks
```

# git init
```
git init
git add .
git commit -m "初回"
git remote add origin https://github.com/kymx1983/simpletasks.git
git push -u origin master
```

# サーバ起動
```shell script
rails server
```

# スポットの登録

## コントローラ作成
```shell script
rails generate controller Spot index show new
````

## タスクモデル作成
```shell script
rails generate model Spot title:string content:text spot_address:text category:integer
```

```shell script
rails db:migrate
```

# コメント

## コメントコントローラ
```shell script
rails generate controller Comment new edit
Running via Spring preloader in process 2481
      create  app/controllers/comment_controller.rb
       route  get 'comment/new'
get 'comment/edit'
      invoke  erb
      create    app/views/comment
      create    app/views/comment/new.html.erb
      create    app/views/comment/edit.html.erb
      invoke  test_unit
      create    test/controllers/comment_controller_test.rb
      invoke  helper
      create    app/helpers/comment_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    scss
      create      app/assets/stylesheets/comment.scss

```

## コメントモデル作成
```shell script
rails generate model Comment type:integer type_id:integer comment:text
Running via Spring preloader in process 2697
      invoke  active_record
      create    db/migrate/20200815155800_create_comments.rb
      create    app/models/comment.rb
      invoke    test_unit
      create      test/models/comment_test.rb
      create      test/fixtures/comments.yml

```

## typeが予約語で使えなかったので、リネーム
```shell script
rails generate migration rename_type_column_to_comments
```

# ユーザ
```shell script
rails generate controller User edit login new show
Running via Spring preloader in process 6446
      create  app/controllers/user_controller.rb
       route  get 'user/edit'
get 'user/login'
get 'user/new'
get 'user/show'
      invoke  erb
      create    app/views/user
      create    app/views/user/edit.html.erb
      create    app/views/user/login.html.erb
      create    app/views/user/new.html.erb
      create    app/views/user/show.html.erb
      invoke  test_unit
      create    test/controllers/user_controller_test.rb
      invoke  helper
      create    app/helpers/user_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    scss
      create      app/assets/stylesheets/user.scss
```

```shell script
rails generate model User login_id:string password:string user_name
Running via Spring preloader in process 7550
      invoke  active_record
      create    db/migrate/20200816003850_create_users.rb
      create    app/models/user.rb
      invoke    test_unit
      create      test/models/user_test.rb
      create      test/fixtures/users.yml

```