# PHP play ground

## install
```sh
git clone git@github.com:ravelll/php_play_ground.git
cd php_play_ground
bundle install --path vendor/bundle
vagrant up
bundle exec itamae ssh --vagrant --host app roles/app.rb
```

### test
```sh
TARGET_HOST=app bundle _1.10.6_ exec rspec
```
