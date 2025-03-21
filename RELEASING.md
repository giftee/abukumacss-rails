# リリース

変更が加わると、以下のようなリリースフローによりリリースされます。

## フロー

1. リリース PR を作成
2. PR をレビューしてマージ
3. GitHub のリリースを作成
4. Gem の Push

### リリース PR を作成

* 以下の 3 ファイルが変更されます
  * lib/gifteeabukumacss/version.rb
  * Gemfile.lock
  * CHANGELOG.md
* そして PR を作成します

### PR をレビューしてマージ

変更者や権限のある人へのレビューを通してマージされます

### GitHub のリリースを作成

gem の Publish 前に GitHub 上でリリースが作成されます

## Gem の Push

以下のように行われます

```bash
$ gem build gifteeabukumacss-rails.gemspec
  Successfully built RubyGem
  Name: gifteeabukumacss-rails
  Version: 0.1.2
  File: gifteeabukumacss-rails-0.1.2.gem

$ gem push gifteeabukumacss-rails-0.1.2.gem
Pushing gem to https://rubygems.org...
Successfully registered gem: gifteeabukumacss-rails (0.1.2)
```
