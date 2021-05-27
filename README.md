## アプリ名
COM✖️COM

## 概要
このアプリではマンガ情報を登録し、登録したマンガ情報を一覧表示させることができます。また、検索機能を使用することで該当したマンガ情報だけを表示させることができます。

## 制作背景（意図）
私はマンガが好きでたくさんマンガを集めているのですが、どのマンガの何巻まで持っているのかをあまり把握しておらず、自分が持っているマンガを管理するアプリがあったら便利だと思い、制作しました。

## DEMO

## 工夫したポイント
私が工夫したポイントは検索機能をつけたことです。
検索機能をつけることで該当したマンガだけを表示させることができました。また、プルダウン方式でジャンルと雑誌だけを検索することで簡単に検索をかけることができます。

## 使用技術（開発環境）

# バックエンド
Ruby,RubyonRails

# フロントエンド
HTML,CSS

# データベース
MySQL,SequelPro

# エディタ
VSCode

# 課題や今後実装したい機能

・課題は、ビュー（HTML,CSS）の実装が不慣れであまり思い通りにできませんでしたので、さらに学習しビューを整えられるようにしたいです。
・今後実装したい機能は、JavaScriptを取り入れて、一覧表示されているマンガの並び替え機能を実装したいです。また、APIを取り入れてマンガ関係の情報（twitterなど）を表示させたいです。

## DB設計
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
