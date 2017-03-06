# README

## TABLE users
|column|other|
|email    |:string, null: false, :unique: true|
|password |:string, null: false|
|nickname |:string, null: false|

# user.rb
|has_many |:messages|
|has_many |:chatgroups through: :chatgroup_users|
|has_many |:chatgroup_users|
-----

##TABLE messages
|column|other|
|text       |:text|
|image      |:string|
|user       |:references, foreign_key: true|
|chatgroup  |:references, foreign_key: true|

#message.rb
|belongs_to |:user|
|belongs_to |:chatgroup|
-----

##TABLE chatgroup_users
|column|other|
|user      |:references, foreign_key: true|
|chatgroup |:references, foreign_key: true|

#chatgroup_user.rb
|belongs_to |:user|
|belongs_to |:chatgroup|
------

##TABLE chatgroups
|column|other|
|name |:string, null: false|

#chatgroup.rb
|has_many |:users through: :chatgroup_users|
|has_many |:chatgroup_users|
|has_many |:messages|

