# giftee Abukuma CSS for Rails

Abukuma CSS は株式会社ギフティのデザインシステムの CSS framework です。gifteeabukumacss-rails はそれを Rails で利用しやすくした Gem です。

## インストール

Gemfile に以下を記述して bundle install してください。

```rb
gem "gifteeabukumacss-rails"
```

`app/assets/stylesheets/application.css` に以下を追加し、Abukuma CSS を読み込みます。

```css
/*
 *= require gifteeabukumacss/rails/style
 */
```

layout ファイルなどに以下を追加し、CSS を利用可能としてください。

```rb
<%= stylesheet_link_tag "gifteeabukumacss/rails/style", media: "all" %>
```

また、利用時は事前にアセットプリコンパイルしてください。

```bash
$ rails assets:precompile
```

## 使い方

インストール後はそのまま使うことができます。

```html
<body>
  <div>
    <button class="ab-Button">g4b-light Button</button>
  </div>
</body>
```

### テーマ

デフォルトで g4b-light テーマになっています。テーマをスイッチしたい場合は、任意の箇所に `data-theme='g4b-light/skeleton-light'` を追加してください。

```html
<body>
  <div>
    <button class="ab-Button">g4b-light Button</button>
    <div data-theme="g4b-dark">
      <button class="ab-Button">g4b-dark Button</button>
      <div data-theme="skeleton-light">
        <button class="ab-Button">skeleton-light Button</button>
      </div>
    </div>
  </div>
</body>
```

## リリース

[RELEASING.md](./RELEASING.md) をご参照ください。

## ライセンス

このプロダクトは[MIT](./LICENSE)の条件に従ってライセンスされています。

## 当社 OSS の利用にあたっての注意事項

[当社 OSS の利用にあたっての注意事項](https://docs.google.com/document/d/1PXmZr5g1I5VxAsLNAmgvLDu0Yxzc4wHVlCusKmPtR4o/edit#heading=h.hezrzkxytrbw) をご参照ください。
