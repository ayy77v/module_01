require 'sinatra'
require 'json'
require 'gyoku'

users ={
	'Alex': {first_name: 'Alex',last_name: 'Rodriguez', age: 25},
	'Simon': {first_name: 'Simon', last_name: 'Wang', age:25},
	'Jeter': {first_name: 'Derek', last_name: 'Jeter', age: 25}
}

before do
  content_type 'application/json'
end

get '/'do 
"Master ruby api, chapter2"
end

get '/users' do
	users.map{|name,data| data.merge(id:name)}.to_json
end