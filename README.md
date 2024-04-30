# README

# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| -----------------  | ------ | --------                  |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| name               | string | null: false               |

has_many :lists

## recipes テーブル

| Column             | Type    | Options     |
| -----------------  | ------  | --------    |
| name               | string  | null: false |
| category_id        | integer | null: false |
| kondate_id         | integer | null: false |

has_many :list_recipes
has_many :recipe_foods
has_many :foods, through: :recipe_foods
has_many :lists, through: :list_recipes


## foods テーブル

| Column   | Type       | Options     |
| -------  | ------     | --------    |
| name     | string     | null: false |
| amount   | string     | null: false |

has_many :list_foods
has_many :recipe_foods
has_many :recipes, through: :recipe_foods
has_many :lists, through: :list_foods

## recipe_foods テーブル

| Column | Type       | Options     |
| -------| ------     | --------    |
| recipe | references | null: false |
| food   | references | null: false |

belongs_to :recipe
belongs_to :food


## lists テーブル

| Column | Type       | Options     |
| -------| ------     | --------    |
| user   | references | null: false |
| memo   | text       |             |

belongs_to :user
has_many :list_recipes
has_many :list_foods
has_many :recipes, through: :list_recipe
has_many :foods, through: :list_foods


## list_recipes テーブル

| Column  | Type       | Options     |
| ------ -| ------     | --------    |
| list    | references | null: false |
| recipe  | references | null: false |

belongs_to :list
belongs_to :recipe


## list_food テーブル

| Column  | Type       | Options     |
| ------ -| ------     | --------    |
| list    | references | null: false |
| food　  | references | null: false |

belongs_to :food
belongs_to :recipe


料理名｜料理カテゴリー｜献立｜写真｜材料｜量｜ユーザ情報｜メモ