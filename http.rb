# -*- encoding: UTF-8 -*-
require 'sinatra'

get '/helloAjax' do
  'Hello Ajax!!!'
end

get '/echo' do
  params[:text] + "を送信しましたね"
end

#非同期のテスト用メソッド
get '/sleep' do
  i = params[:text]
  sleep i.to_i
  i
end

get '/aync' do
  sleep 5 
  "通信終了"
end
