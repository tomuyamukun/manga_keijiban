# テーブル設計

## users テーブル
| column             | Type   | options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| nickname           | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :comics




## comics テーブル
| column  | Type       | options                       |
| ------- | -----------| ----------------------------- |
| title   | string     | null: false                   |
| summary | text       | null: false                   |
| user    | references | null: false foreign_key: true |
 


### Association
- belongs_to :user
- has_many :rooms


## rooms テーブル
| column      | Type       | options                       |
| ----------- | ---------- | ----------------------------- |
| name        | string     | null: false                   |
| user_comic  | references | null: false foreign_key: true |


### Association
- belongs_to :comic
- has_many :messages





## messages テーブル
| column      | Type       | options     |
| ------------| ---------- | ----------- |
| nickname    | string     |             |
| comic       | references | null: false |
| text        | text       | null: false |
| room        | references | null: false |

### Association
- belongs_to :room
- belongs_to :comic




## comic_room テーブル
| column | Type       | options                       |
| ------ | ---------- | ----------------------------- |
| room   | references | null:false  foreign_key: true | 
| comic  | references | null:false  foreign_key: true | 

### Association
- belongs_to :comi
- belongs_to :room
- has_one :room