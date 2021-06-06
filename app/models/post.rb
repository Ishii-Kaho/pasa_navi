class Post < ApplicationRecord
  has_many :comments
  has_many :favorites
  belongs_to :user
  belongs_to :pasa
  belongs_to :genre
  attachment :image

  enum prefecture: {
    "--都道府県選択--":0,北海道:1,青森県:2,岩手県:3,宮城県:4,秋田県:5,山形県:6,福島県:7,
    茨城県:8,栃木県:9,群馬県:10,埼玉県:11,千葉県:12,東京都:13,神奈川県:14,
    新潟県:15,富山県:16,石川県:17,福井県:18,山梨県:19,長野県:20,
    岐阜県:21,静岡県:22,愛知県:23,三重県:24,
    滋賀県:25,京都府:26,大阪府:27,兵庫県:28,奈良県:29,和歌山県:30,
    鳥取県:31,島根県:32,岡山県:33,広島県:34,山口県:35,
    徳島県:36,香川県:37,愛媛県:38,高知県:39,
    福岡県:40,佐賀県:41,長崎県:42,熊本県:43,大分県:44,宮崎県:45,鹿児島県:46,沖縄県:47
  }

  enum highway_name: [
    :"--高速道路選択--",:道央自動車道,:札樽自動車道,:道東自動車道,:東北自動車道,:八戸自動車道,
    :秋田自動車道,:山形自動車道,:磐越自動車道,:日本海東北自動車道,:東北中央自動車道,:北陸自動車道,:東京外環自動車道,:関越自動車道,:上信越自動車道,:長野自動車道,
    :常磐自動車道,:館山自動車道,:東関東自動車道,:北関東自動車道,:京葉道路,:富津館山道路,:首都圏中央連絡自動車道,:千葉東金道路,:第三京浜道路,:横浜新道,
    :横浜横須賀道路,:東京湾アクアライン・東京湾アクアライン連絡道,:中央自動車道,:長野自動車道,:中部横断自動車道,:東名高速道路,:新東名高速道路,:名神高速道路,:新名神高速道路,:東海北陸自動車道,
    :北陸自動車道,:伊勢湾岸自動車道,:東名阪自動車道,:伊勢自動車道,:紀勢自動車道,:舞鶴若狭自動車道,:首都圏中央連絡自動車道（新湘南バイパス）,:東海環状自動車道,:西湘バイパス,:小田原厚木道路,
    :名神高速道路,:新名神高速道路,:西名阪自動車道,:近畿自動車道,:阪和自動車道,:舞鶴若狭自動車道,:中国自動車道,:山陽自動車道,:岡山自動車道,:米子自動車道,
    :尾道自動車道,:松江自動車道,:広島自動車道,:浜田自動車道,:山陰自動車道,:徳島自動車道,:松山自動車道,:高松自動車道,:高知自動車道,:関門橋,
    :九州自動車道,:宮崎自動車道,:長崎自動車道,:大分自動車道,:東九州自動車道,:沖縄自動車道,:湯浅御坊道路,:京都縦貫自動車道,:鹿児島道路（南九州西回り自動車道）,:第二京阪道路,
    :第二神明道路,:広島呉道路,:本州四国連絡高速道路（JB本四高速）,:首都高速道路,:阪神高速道路,:広島高速1号線,:北九州高速4号線,:道東自動車道、：秋田自動車道,:日本海東北自動車道,
    :名阪国道,:紀勢自動車道,:鳥取自動車道,:東九州自動車道,:志戸坂峠道路（鳥取自動車道）,:山陰自動車道,:深川留萌自動車道,:旭川紋別自動車道,:三陸自動車道,:能越自動車道,
    :京奈和自動車道,:北近畿豊岡自動車道,:西広島バイパス,:松永道路,:姫路バイパス,:三陸自動車道,:日光宇都宮道路,:能越自動車道,:京都縦貫自動車道,:播但連絡道路,
    :のと里山海道
    ]
end