require 'haml'
require 'sinatra'

set :bind, '0.0.0.0'

get '/kisetsu' do
  haml :kisetsu
end

post '/kisetsu' do
  kisetsu=params['kisetsu'].to_i
  STDERR.puts kisetsu
  if kisetsu<1||kisetsu>12
    @kisetsu="そのような月はありません。"
  end
  case kisetsu
  when 1,2,12
    @kisetsu="季節は冬です。"
  when 3,4,5
    @kisetsu="季節は春です。"
  when 6,7,8
    @kisetsu="季節は夏です。"
  when 9,10,11
    @kisetsu="季節は秋です。"
  end
  haml :kisetsu_kekka
end
