# -*- encoding: UTF-8 -*-
require 'sinatra'

get '/helloAjax' do
  puts params[:text] 
  'Hello Ajax!!'
end

get '/echo' do
  text = params[:text]
  if params[:text]
    params[:text] + "を送信しましたね"
  else
    ""
  end 
end

#非同期テスト用メソッド
get '/sleep' do
  i = params[:text]
  sleep i.to_i
  i
end

get '/aync' do
  sleep 5 
  "通信終了"
end
