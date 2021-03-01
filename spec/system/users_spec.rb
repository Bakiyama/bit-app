require 'rails_helper'

RSpec.describe "ユーザー登録", type: :system do
  before do
    @user = FactoryBot.build(:user)
  end

  describe "ユーザー新規登録ができるとき"do
    it '正しい情報を入力すればユーザー新規登録ができてトップページに移動する' do
      
    end

    it 'トップページに移動する' do
    end

    it 'トップページにサインアップページへ遷移するボタンがある' do
    end

    it '新規登録ページへ移動する' do
    end

    it 'ユーザー情報を入力する' do
    end

    it 'サインアップボタンを押すとユーザーモデルのカウントが1上がる' do
    end

    it 'トップページへ遷移する' do
    end

    it 'カーソルを合わせるとログアウトボタンが表示される' do
    end

    it 'サインアップページへ遷移するボタンや、ログインページへ遷移するボタンが表示されていない' do
    end
  
  end

  describe "ユーザー新規登録ができないとき"do
    it '誤った情報ではユーザー新規登録ができずに新規登録ページへ戻ってくる' do
    end

    it 'トップページに移動する' do
    end

    it 'トップページにサインアップページへ遷移するボタンがある' do
    end

    it '新規登録ページへ移動する' do
    end

    it 'ユーザー情報を入力する' do
    end

    it 'サインアップボタンを押してもユーザーモデルのカウントは上がらない' do
    end

    it '新規登録ページへ戻される' do
    end

  end

end
