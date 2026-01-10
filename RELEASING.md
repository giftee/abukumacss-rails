# リリース

GitHub Actions により自動化されています。

## 自動リリースフロー

```
@giftee/abukuma-css 更新
         ↓
   css_upgrade_pr.yml (毎日 6:00 MON-FRI)
   → style.css 更新 PR 自動作成
         ↓
      PR マージ
         ↓
   release_pr.yml (毎日 7:00 MON-FRI)
   → version.rb, Gemfile.lock, CHANGELOG.md 更新
   → リリース PR 自動作成
         ↓
      PR マージ
         ↓
   publish_gem.yml
   → gem build & push to RubyGems
   → GitHub Release 作成
```

## 各ワークフローの詳細

### 1. css_upgrade_pr.yml

- **トリガー**: 毎日 6:00 (月〜金) / 手動実行可
- **処理内容**:
  - npm から最新の @giftee/abukuma-css をダウンロード
  - `lib/assets/stylesheets/gifteeabukumacss/rails/style.css` を更新
  - 変更がある場合のみ PR を作成

### 2. release_pr.yml

- **トリガー**: 毎日 7:00 (月〜金) / 手動実行可
- **処理内容**:
  - 前回リリースタグ以降に変更があるかチェック
  - 以下のファイルを更新:
    - `lib/gifteeabukumacss/version.rb`
    - `Gemfile.lock`
    - `CHANGELOG.md`
  - リリース PR を作成

### 3. publish_gem.yml

- **トリガー**: `release/` ブランチからの PR が main にマージされたとき
- **処理内容**:
  - `gem build gifteeabukumacss-rails.gemspec`
  - `gem push` で RubyGems に公開
  - GitHub Release を作成

## 必要な設定

### Repository Secrets

| Secret 名 | 説明 |
|-----------|------|
| `RUBYGEMS_API_KEY` | RubyGems の API キー |

API キーは https://rubygems.org/profile/api_keys で作成できます。

## 手動リリース

自動化に問題がある場合は、手動でリリースすることも可能です。

```bash
# バージョン更新
vim lib/gifteeabukumacss/version.rb
bundle install
vim CHANGELOG.md

# コミット & プッシュ
git add .
git commit -m "release vX.Y.Z"
git push

# gem ビルド & プッシュ
gem build gifteeabukumacss-rails.gemspec
gem push gifteeabukumacss-rails-X.Y.Z.gem

# GitHub Release 作成
gh release create vX.Y.Z --title "vX.Y.Z" --notes "Release vX.Y.Z"
```
