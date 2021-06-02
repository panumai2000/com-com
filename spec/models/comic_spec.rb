require 'rails_helper'

RSpec.describe Comic, type: :model do
  before do
    @comic = FactoryBot.build(:comic)
  end


 describe 'マンガ登録機能' do
  context '商品出品できるとき' do
    it 'image,name,author,number,genre_id,magazine_id,が存在すれば登録できる' do
      expect(@comic).to be_valid
    end
  end

  context 'マンガ登録できるとき' do
    it 'nameが空では出品できない' do
      @comic.name = ''
      @comic.valid?
    end
    it 'imageが空では出品できない' do
      @comic.image = nil
      @comic.valid?
    end
    it 'authorが空では出品できない' do
      @comic.author = ''
      @comic.valid?
    end
    it 'numberが空では出品できない' do
      @comic.number = ''
      @comic.valid?
    end
    it 'genre_idが空では出品できない' do
      @comic.genre_id = ''
      @comic.valid?
    end
    it 'magazine_idが空では出品できない' do
      @comic.magazine_id = ''
      @comic.valid?
    end
    it 'userが紐付いていないと出品できないこと' do
      @comic.user = nil
      @comic.valid?
      expect(@comic.errors.full_messages).to include('User must exist')
    end
    it 'genre_idのid1を洗濯すると出品できない' do
      @comic.genre_id = '1'
      @comic.valid?
    end
    it 'magazine_idのid1を洗濯すると出品できない' do
      @comic.magazine_id = '1'
      @comic.valid?
    end
  end
end
end