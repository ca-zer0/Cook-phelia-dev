# README

# テーブル設計

ユーザー
メール
パスワード
名前,string

料理
(料理id)
料理名,string
カテゴリーid,integer
献立id,integer
写真

材料
(材料id)
料理id,references
材料名,string
量,string

料理_材料(中間テーブル)
料理id,references
材料id,references

買い物リスト
(リストid)
ユーザidreferences
メモ,text

リスト_料理(中間テーブル)
リストid,references
料理id,references

リスト_材料(中間テーブル)
リストid,references
材料id,references



料理名｜料理カテゴリー｜献立｜写真｜材料｜量｜ユーザ情報｜メモ