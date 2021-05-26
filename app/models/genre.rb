class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ジャンル' },
    { id: 2, name: 'バトル' },
    { id: 3, name: 'SF' },
    { id: 4, name: 'ギャグ' },
    { id: 5, name: 'サスペンス' },
    { id: 6, name: 'ヤンキー' },
    { id: 7, name: 'スポーツ' },
    { id: 8, name: 'ラブコメ' },
    { id: 9, name: '少女漫画' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :comics

  end