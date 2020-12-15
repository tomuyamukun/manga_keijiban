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
- belongs_to :user_comic
- has_many :messages





## messages テーブル
| column      | Type       | options     |
| ------------| ---------- | ----------- |
| nickname    | string     | null: false |
| comic       | references | null: false |

### Association
- belongs_to :room




## user_comic テーブル
| column | Type       | options                       |
| ------ | ---------- | ----------------------------- |
| user   | references | null:false  foreign_key: true | 
| comic  | references | null:false  foreign_key: true | 

### Association
- belongs_to :user
- belongs_to :comic
- has_one :room