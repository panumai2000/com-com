class Magazine < ActiveHash::Base
  self.data = [
    { id: 1, name: '雑誌' },
    { id: 2, name: '週刊少年ジャンプ' },
    { id: 3, name: 'ジャンプSQ' },
    { id: 4, name: 'ヤングジャンプ' },
    { id: 5, name: 'グランドジャンプ' },
    { id: 6, name: 'ウルトラジャンプ' },
    { id: 7, name: '週刊少年マガジン' },
    { id: 8, name: 'ヤングマガジン' },
    { id: 9, name: 'モーニング' },
    { id: 10, name: '週刊少年チャンピオン' },
    { id: 11, name: 'ヤングチャンピオン' },
    { id: 12, name: '少年サンデー' },
    { id: 13, name: 'ビッグスピリッツ' },
    { id: 14, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :comics

  end

