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

## スポットモデル作成
```shell script
rails generate model Spot title:string content:text spot_address:text category:integer
```

```shell script
rails db:migrate
```

# 投稿

## 投稿コントローラ
```shell script
rails generate controller Post new edit
```

## 投稿モデル作成
```shell script
rails generate model Post visit_date:date content:string user_id:integer spot_id:integer score:integer
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