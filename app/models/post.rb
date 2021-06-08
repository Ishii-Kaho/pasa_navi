class Post < ApplicationRecord
  has_many :comments
  has_many :favorites
  belongs_to :user
  belongs_to :pasa
  belongs_to :genre
  attachment :image

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  validates :visit_weekday, inclusion: { in: ["平日","休日","祝日"] }
  validates :cleanliness, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true

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
    "--高速道路選択--":0,道央自動車道:1,札樽自動車道:2,道東自動車道:3,東北自動車道:4,八戸自動車道:5,
    秋田自動車道:6,山形自動車道:7,磐越自動車道:8,日本海東北自動車道:9,東北中央自動車道:10,北陸自動車道:11,東京外環自動車道:12,関越自動車道:13,上信越自動車道:14,長野自動車道:15,
    常磐自動車道:16,館山自動車道:17,東関東自動車道:18,北関東自動車道:19,京葉道路:20,富津館山道路:21,首都圏中央連絡自動車道:22,千葉東金道路:23,第三京浜道路:24,横浜新道:25,
    横浜横須賀道路:26,東京湾アクアライン・東京湾アクアライン連絡道:27,中央自動車道:28,中部横断自動車道:29,東名高速道路:30,新東名高速道路:31,名神高速道路:32,新名神高速道路:33,東海北陸自動車道:34,
    伊勢湾岸自動車道:35,東名阪自動車道:36,伊勢自動車道:37,紀勢自動車道:38,舞鶴若狭自動車道:39,東海環状自動車道:40,西湘バイパス:41,小田原厚木道路:42,
    西名阪自動車道:43,近畿自動車道:44,阪和自動車道:45,中国自動車道:46,山陽自動車道:47,岡山自動車道:48,米子自動車道:49,
    松江自動車道:50,広島自動車道:51,浜田自動車道:52,山陰自動車道:53,徳島自動車道:54,松山自動車道:55,高松自動車道:56,高知自動車道:57,関門橋:58,
    九州自動車道:59,宮崎自動車道:60,長崎自動車道:61,大分自動車道:62,東九州自動車道:63,沖縄自動車道:64,京都縦貫自動車道:65,鹿児島道路:66,第二京阪道路:67,
    第二神明道路:68,広島呉道路:69,本州四国連絡道路:70,首都高速道路:71,阪神高速道路:72,広島高速1号線:73,北九州高速4号線:74,
    名阪国道:75,鳥取自動車道:76,深川留萌自動車道:77,旭川紋別自動車道:78,三陸自動車道:79,能越自動車道:80,
    京奈和自動車道:81,北近畿豊岡自動車道:82,西広島バイパス:83,松永道路:84,姫路バイパス:85,日光宇都宮道路:86,播但連絡道路:87,
    のと里山海道:88
    ]
end
