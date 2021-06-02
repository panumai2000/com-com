# ⭐アプリ名
## ✨COM✖️COM✨
<br>

# ⭐概要
🔸このアプリではマンガの情報を登録し、登録したマンガ情報を一覧表示させることができます。また、検索機能を使用することで該当したマンガだけを表示させることができます。

<br>

# ⭐制作背景（意図）
🔸私はマンガが好きでたくさんマンガを集めているのですが、どのマンガを何巻まで持っているのかをあまり把握しておらず、自分が持っているマンガを管理できるアプリがあれば便利だと思い、制作しました。

<br>

# ⭐DEMO

🔸トップページ画像（投稿無し）
[![Image from Gyazo](https://i.gyazo.com/64f94e1cc7124298c23c6fc917c626ec.jpg)](https://gyazo.com/64f94e1cc7124298c23c6fc917c626ec)
🔸新規登録ページ画像
[![Image from Gyazo](https://i.gyazo.com/fe202779225e16ac98fcb070c13409d7.jpg)](https://gyazo.com/fe202779225e16ac98fcb070c13409d7)
🔸新規登録動画
[![Image from Gyazo](https://i.gyazo.com/5b5e6d128b232f5526da16b302fa85bb.gif)](https://gyazo.com/5b5e6d128b232f5526da16b302fa85bb)
🔸マンガ登録ページ画像
[![Image from Gyazo](https://i.gyazo.com/3a7febbb75b59f18cab2c340f87852a0.jpg)](https://gyazo.com/3a7febbb75b59f18cab2c340f87852a0)
🔸マンガ登録動画
[![Image from Gyazo](https://i.gyazo.com/a63931ef1a784ec83ebe993618b036f1.gif)](https://gyazo.com/a63931ef1a784ec83ebe993618b036f1)
🔸マンガ詳細ページ画像
[![Image from Gyazo](https://i.gyazo.com/3eb50bb26692997e7204a640b2790b70.jpg)](https://gyazo.com/3eb50bb26692997e7204a640b2790b70)
🔸マンガ編集ページ画像
[![Image from Gyazo](https://i.gyazo.com/5cf29b998d4a574141211d201e9a92b9.jpg)](https://gyazo.com/5cf29b998d4a574141211d201e9a92b9)
🔸マンガ削除動画
[![Image from Gyazo](https://i.gyazo.com/09e9fa2b21bea9cec83a9680faa03911.gif)](https://gyazo.com/09e9fa2b21bea9cec83a9680faa03911)
🔸検索動画
[![Image from Gyazo](https://i.gyazo.com/5fb517d596b1d09b7311a0a33758f14f.gif)](https://gyazo.com/5fb517d596b1d09b7311a0a33758f14f)

<br>

# ⭐工夫したポイント
🔸検索機能を実装することで該当したマンガだけを表示させることができ、プルダウン方式でジャンルと雑誌だけを検索することで簡単に検索ができるようにしました。</br>
🔸マウスオーバーでボタンの色が変わるようにしました。
<br>

# ⭐使用技術（開発環境）

## 🔸バックエンド
Ruby,RubyonRails

## 🔸フロントエンド
HTML,CSS

## 🔸データベース
MySQL,SequelPro

## 🔸インフラ
AWS(EC2),Capistrano,Docker(開発環境)

## 🔸アプリケーションサーバ(本番環境)
unicorn

## 🔸ソール管理
GitHub,GitHubDesktop

## 🔸テスト
RSpec

## 🔸エディタ
VSCode

<br>

# ⭐課題や今後実装したい機能

🔸課題：ビュー（HTML,CSS）の実装が不慣れであまり思い通りの見た目にできませんでしたので、さらに学習しビューを整えられるようにしたいです。
<br>🔸今後実装したい機能は、JavaScriptを取り入れて、一覧表示されているマンガの並び替え機能を実装したいです。また、APIを取り入れてマンガ関係の情報（twitterなど）を表示させたいです。

<br>

# ⭐DB設計
## Users テーブル

| Column              | Type   | Options                  |
| ------------------- | ------ | ------------------------ |
| nickname            | string | null: false              |
| email               | string | null: false unique: true |
| encrypted_password  | string | null: false              |
| birthday            | date   | null: false              |

### Association

- has_many :items

## Comics テーブル

| Column       | Type       | Options                       |
| ------------ | ---------- | ----------------------------- |
| name         | string     | null: false                   |
| genre_id     | integer    | null: false                   |
| magazine_id  | integer    | null: false                   |
| author       | string     | null: false                   |
| number       | integer    | null: false                   |
| end          | string     | null: false                   |
| user         | references | null: false foreign_key: true |

### Association

- belongs_to :user
