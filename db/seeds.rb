require 'csv'

CSV.foreach('db/burden.csv', headers: true) do |row|
  ShippingBurden.create(id: row['id'], name: row['name'], created_at: row['created_at'], updated_at: row['updated_at'])
end

CSV.foreach('db/day.csv', headers: true) do |row|
  ShippingDay.create(id: row['id'], name: row['name'], created_at: row['created_at'], updated_at: row['updated_at'])
end

CSV.foreach('db/method.csv', headers: true) do |row|
  ShippingMethod.create(id: row['id'], name: row['name'], created_at: row['created_at'], updated_at: row['updated_at'])
end

CSV.foreach('db/region.csv', headers: true) do |row|
  ShippingRegion.create(id: row['id'], name: row['name'], created_at: row['created_at'], updated_at: row['updated_at'])
end

CSV.foreach('db/status.csv', headers: true) do |row|
  ShippingStatus.create(id: row['id'], name: row['name'], created_at: row['created_at'], updated_at: row['updated_at'])
end

CSV.foreach('db/brand.csv', headers: true) do |row|
  Brand.create(id: row['id'], name: row['name'], created_at: row['created_at'], updated_at: row['updated_at'])
end

CSV.foreach('db/itemstatus.csv', headers: true) do |row|
  ItemStatus.create(id: row['id'], status: row['status'], created_at: row['created_at'], updated_at: row['updated_at'])
end
# 親要素
a = Category.create(:name=>"レディース")
b = Category.create(:name=>"メンズ")
c = Category.create(:name=>"ベビー・キッズ")
d = Category.create(:name=>"インテリア・住まい・小物")
e = Category.create(:name=>"本・音楽・ゲーム")
f = Category.create(:name=>"おもちゃ・ホビー・グッズ")
g = Category.create(:name=>"コスメ・香水・美容")
h = Category.create(:name=>"家電・スマホ・カメラ")
i = Category.create(:name=>"スポーツ・レジャー")
j = Category.create(:name=>"ハンドメイド")
k = Category.create(:name=>"チケット")
l = Category.create(:name=>"自動車・オートバイ")
m = Category.create(:name=>"その他")

# 子要素
# レディース
aa = a.children.create(:name=>"トップス")
ab = a.children.create(:name=>"ジャケット/アウター")
ac = a.children.create(:name=>"パンツ")
ad = a.children.create(:name=>"スカート")
ae = a.children.create(:name=>"ワンピース")
af = a.children.create(:name=>"靴")
ag = a.children.create(:name=>"ルームウェア/パジャマ")
ah = a.children.create(:name=>"レッグウェア")
ai = a.children.create(:name=>"帽子")
aj = a.children.create(:name=>"バッグ")
ak = a.children.create(:name=>"アクセサリー")
al = a.children.create(:name=>"ヘアアクセサリー")
am = a.children.create(:name=>"小物")
an = a.children.create(:name=>"時計")
ao = a.children.create(:name=>"ウィッグ/エクステ")
ap = a.children.create(:name=>"浴衣/水着")
aq = a.children.create(:name=>"スーツ/フォーマル/ドレス")
ar = a.children.create(:name=>"マタニティ")
as = a.children.create(:name=>"その他")


# メンズ
ba = b.children.create(:name=>"トップス")
bb = b.children.create(:name=>"ジャケット/アウター")
bc = b.children.create(:name=>"パンツ")
bd = b.children.create(:name=>"靴")
be = b.children.create(:name=>"バッグ")
bf = b.children.create(:name=>"スーツ")
bg = b.children.create(:name=>"帽子")
bh = b.children.create(:name=>"アクセサリー")
bi = b.children.create(:name=>"小物")
bj = b.children.create(:name=>"時計")
bk = b.children.create(:name=>"水着")
bl = b.children.create(:name=>"レッグウェア")
bm = b.children.create(:name=>"アンダーウェア")
bn = b.children.create(:name=>"その他")

# ベビー・キッズ
ca = c.children.create(:name=>"ベビー服(女の子用) ~95cm")
cb = c.children.create(:name=>"ベビー服(男の子用) ~95cm")
cc = c.children.create(:name=>"ベビー服(男女兼用) ~95cm")
cd = c.children.create(:name=>"キッズ服(女の子用) 100cm~")
ce = c.children.create(:name=>"キッズ服(男の子用) 100cm~")
cf = c.children.create(:name=>"キッズ服(男女兼用) 100cm~")
cg = c.children.create(:name=>"キッズ靴")
ch = c.children.create(:name=>"子ども用ファッション小物")
ci = c.children.create(:name=>"おむつ/トイレ/バス")
cj = c.children.create(:name=>"外出/移動用品")
ck = c.children.create(:name=>"授乳/食事")
cl = c.children.create(:name=>"ベビー家具/寝具/室内用品")
cm = c.children.create(:name=>"おもちゃ")
cn = c.children.create(:name=>"行事/記念品")
co = c.children.create(:name=>"その他")

# インテリア・住まい・小物
da = d.children.create(:name=>"キッチン/食器")
db = d.children.create(:name=>"ベッド/マットレス")
dc = d.children.create(:name=>"ソファ/ソファベッド")
dd = d.children.create(:name=>"椅子/チェア")
de = d.children.create(:name=>"机/テーブル")
df = d.children.create(:name=>"収納家具")
dg = d.children.create(:name=>"ラグ/カーペット/マット")
dh = d.children.create(:name=>"カーテン/ブラインド")
di = d.children.create(:name=>"ライト/照明")
dj = d.children.create(:name=>"寝具")
dk = d.children.create(:name=>"インテリア小物")
dl = d.children.create(:name=>"季節/年中行事")
dm = d.children.create(:name=>"その他")

# 本・音楽・ゲーム
ea = e.children.create(:name=>"本")
eb = e.children.create(:name=>"漫画")
ec = e.children.create(:name=>"雑誌")
ed = e.children.create(:name=>"CD")
ee = e.children.create(:name=>"DVD/ブルーレイ")
ef = e.children.create(:name=>"レコード")
eg = e.children.create(:name=>"テレビゲーム")

# おもちゃ・ホビー・グッズ
fa = f.children.create(:name=>"おもちゃ")
fb = f.children.create(:name=>"タレントグッズ")
fc = f.children.create(:name=>"コミック/アニメグッズ")
fd = f.children.create(:name=>"トレーディングカード")
fe = f.children.create(:name=>"フィギュア")
ff = f.children.create(:name=>"楽器/器材")
fg = f.children.create(:name=>"コレクション")
fh = f.children.create(:name=>"ミリタリー")
fi = f.children.create(:name=>"美術品")
fj = f.children.create(:name=>"アート用品")
fk = f.children.create(:name=>"その他")

# コスメ・香水・美容
ga = g.children.create(:name=>"ベースメイク")
gb = g.children.create(:name=>"メイクアップ")
gc = g.children.create(:name=>"ネイルケア")
gd = g.children.create(:name=>"香水")
ge = g.children.create(:name=>"スキンケア/基礎化粧品")
gf = g.children.create(:name=>"ヘアケア")
gg = g.children.create(:name=>"ボディケア")
gh = g.children.create(:name=>"オーラルケア")
gi = g.children.create(:name=>"リラクゼーション")
gj = g.children.create(:name=>"ダイエット")
gk = g.children.create(:name=>"その他")

# 家電・スマホ・カメラ
ha = h.children.create(:name=>"スマートフォン/携帯電話")
hb = h.children.create(:name=>"スマホアクセサリー")
hc = h.children.create(:name=>"PC/タブレット")
hd = h.children.create(:name=>"カメラ")
he = h.children.create(:name=>"テレビ/映像機器")
hf = h.children.create(:name=>"オーディオ機器")
hg = h.children.create(:name=>"美容/健康")
hh = h.children.create(:name=>"冷暖房/空調")
hi = h.children.create(:name=>"生活家電")
hj = h.children.create(:name=>"その他")

# スポーツ・レジャー
ia = i.children.create(:name=>"ゴルフ")
ib = i.children.create(:name=>"フィッシング")
ic = i.children.create(:name=>"自転車")
id = i.children.create(:name=>"トレーニング/エクササイズ")
ie = i.children.create(:name=>"野球")
iff = i.children.create(:name=>"サッカー/フットサル")
ig = i.children.create(:name=>"テニス")
ih = i.children.create(:name=>"スノーボード")
ii = i.children.create(:name=>"スキー")
ij = i.children.create(:name=>"その他スポーツ")
ik = i.children.create(:name=>"アウトドア")
il = i.children.create(:name=>"その他")

# ハンドメイド
ja = j.children.create(:name=>"アクセサリー(女性用)")
jb = j.children.create(:name=>"ファッション/小物")
jc = j.children.create(:name=>"アクセサリー/時計")
jd = j.children.create(:name=>"日用品/インテリア")
je = j.children.create(:name=>"趣味/おもちゃ")
jf = j.children.create(:name=>"キッズ/ベビー")
jg = j.children.create(:name=>"素材/材料")
jh = j.children.create(:name=>"二次創作物")
ji = j.children.create(:name=>"その他")

# チケット
ka = k.children.create(:name=>"音楽")
kb = k.children.create(:name=>"スポーツ")
kc = k.children.create(:name=>"演劇/芸能")
kd = k.children.create(:name=>"イベント")
ke = k.children.create(:name=>"映画")
kf = k.children.create(:name=>"施設利用券")
kg = k.children.create(:name=>"優待券/割引券")
kh = k.children.create(:name=>"その他")

# 自動車・オートバイ
la = l.children.create(:name=>"自動車本体")
lb = l.children.create(:name=>"自動車タイヤ/ホイール")
lc = l.children.create(:name=>"自動車パーツ")
ld = l.children.create(:name=>"自動車アクセサリー")
le = l.children.create(:name=>"オートバイ車体")
lf = l.children.create(:name=>"オートバイパーツ")
lg = l.children.create(:name=>"オートバイアクセサリー")

# その他
ma = m.children.create(:name=>"まとめ売り")
mb = m.children.create(:name=>"ペット用品")
mc = m.children.create(:name=>"食品")
md = m.children.create(:name=>"飲料/酒")
me = m.children.create(:name=>"日用品/生活雑貨/旅行")
mf = m.children.create(:name=>"アンティーク/コレクション")
mg = m.children.create(:name=>"文房具/事務用品")
mh = m.children.create(:name=>"事務/店舗用品")
mi = m.children.create(:name=>"その他")



# 孫要素
aa.children.create([{:name=>"Tシャツ/カットソー(半袖/袖なし)"}, {:name=>"Tシャツ/カットソー(七分/長袖)"}, {:name=>"シャツ/ブラウス(半袖/袖なし)"}, {:name=>"シャツ/ブラウス(七分/長袖)"}, {:name=>"ポロシャツ"}, {:name=>"キャミソール"}, {:name=>"タンクトップ"}, {:name=>"ホルターネック"}, {:name=>"ニット/セーター"}, {:name=>"チュニック"}, {:name=>"カーディガン/ボレロ"}, {:name=>"アンサンブル"}, {:name=>"ベスト/ジレ"}, {:name=>"パーカー"}, {:name=>"トレーナー/スウェット"}, {:name=>"ベアトップ/チューブトップ"}, {:name=>"ジャージ"}, {:name=>"その他"}])
ab.children.create([{:name=>"テーラードジャケット"}, {:name=>"ノーカラージャケット"}, {:name=>"Gジャン/デニムジャケット"}, {:name=>"レザージャケット"}, {:name=>"ダウンジャケット"}, {:name=>"ライダースジャケット"}, {:name=>"ミリタリージャケット"}, {:name=>"ダウンベスト"}, {:name=>"ジャンパー/ブルゾン"}, {:name=>"ポンチョ"}, {:name=>"ロングコート"}, {:name=>"トレンチコート"}, {:name=>"ダッフルコート"}, {:name=>"ピーコート"}, {:name=>"チェスターコート"}, {:name=>"モッズコート"}, {:name=>"スタジャン"}, {:name=>"毛皮/ファーコート"}, {:name=>"スプリングコート"}, {:name=>"スカジャン"}, {:name=>"その他"}])
ac.children.create([{:name=>"デニム/ジーンズ"}, {:name=>"ショートパンツ"}, {:name=>"カジュアルパンツ"}, {:name=>"ハーフパンツ"}, {:name=>"チノパン"}, {:name=>"ワークパンツ/カーゴパンツ"}, {:name=>"クロップドパンツ"}, {:name=>"サロペット/オーバーオール"}, {:name=>"オールインワン"}, {:name=>"サルエルパンツ"}, {:name=>"ガウチョパンツ"}, {:name=>"その他"}])
ad.children.create([{:name=>"ミニスカート"}, {:name=>"ひざ丈スカート"}, {:name=>"ロングスカート"}, {:name=>"キュロット"}, {:name=>"その他"}])
ae.children.create([{:name=>"ミニワンピース"}, {:name=>"ひざ丈ワンピース"}, {:name=>"ロングワンピース"}, {:name=>"その他"}])
af.children.create([{:name=>"ハイヒール/パンプス"}, {:name=>"ブーツ"}, {:name=>"サンダル"}, {:name=>"スニーカー"}, {:name=>"ミュール"}, {:name=>"モカシン"}, {:name=>"ローファー/革靴"}, {:name=>"フラットシューズ/バレエシューズ"}, {:name=>"長靴/レインシューズ"}, {:name=>"その他"}])
ag.children.create([{:name=>"パジャマ"}, {:name=>"ルームウェア"}])
ah.children.create([{:name=>"ソックス"}, {:name=>"スパッツ/レギンス"}, {:name=>"ストッキング/タイツ"}, {:name=>"レッグウォーマー"}, {:name=>"その他"}])
ai.children.create([{:name=>"ニットキャップ/ビーニー"}, {:name=>"ハット"}, {:name=>"ハンチング/ベレー帽"}, {:name=>"キャップ"}, {:name=>"キャスケット"}, {:name=>"麦わら帽子"}, {:name=>"その他"}])
aj.children.create([{:name=>"ハンドバッグ"}, {:name=>"トートバッグ"}, {:name=>"エコバッグ"}, {:name=>"リュック/バックパック"}, {:name=>"ボストンバッグ"}, {:name=>"スポーツバッグ"}, {:name=>"ショルダーバッグ"}, {:name=>"クラッチバッグ"}, {:name=>"ポーチ/バニティ"}, {:name=>"ボディバッグ/ウェストバッグ"}, {:name=>"マザーズバッグ"}, {:name=>"メッセンジャーバッグ"}, {:name=>"ビジネスバッグ"}, {:name=>"旅行用バッグ/キャリーバッグ"}, {:name=>"ショップ袋"}, {:name=>"和装用バッグ"}, {:name=>"かごバッグ"}, {:name=>"その他"}])
ak.children.create([{:name=>"ネックレス"}, {:name=>"ブレスレット"}, {:name=>"バングル/リストバンド"}, {:name=>"リング"}, {:name=>"ピアス(片耳用)"}, {:name=>"ピアス(両耳用)"}, {:name=>"イヤリング"}, {:name=>"アンクレット"}, {:name=>"ブローチ/コサージュ"}, {:name=>"チャーム"}, {:name=>"その他"}])
al.children.create([{:name=>"ヘアゴム/シュシュ"}, {:name=>"ヘアバンド/カチューシャ"}, {:name=>"ヘアピン"}, {:name=>"その他"}])
am.children.create([{:name=>"長財布"}, {:name=>"折り財布"}, {:name=>"コインケース/小銭入れ"}, {:name=>"名刺入れ/定期入れ"}, {:name=>"キーケース"}, {:name=>"キーホルダー"}, {:name=>"手袋/アームカバー"}, {:name=>"ハンカチ"}, {:name=>"ベルト"}, {:name=>"マフラー/ショール"}, {:name=>"ストール/スヌード"}, {:name=>"バンダナ/スカーフ"}, {:name=>"ネックウォーマー"}, {:name=>"サスペンダー"}, {:name=>"サングラス/メガネ"}, {:name=>"モバイルケース/カバー"}, {:name=>"手帳"}, {:name=>"イヤマフラー"}, {:name=>"傘"}, {:name=>"レインコート/ポンチョ"}, {:name=>"ミラー"}, {:name=>"タバコグッズ"}, {:name=>"その他"}])
an.children.create([{:name=>"腕時計(アナログ)"}, {:name=>"腕時計(デジタル)"}, {:name=>"ラバーベルト"}, {:name=>"レザーベルト"}, {:name=>"金属ベルト"}, {:name=>"その他"}])
ao.children.create([{:name=>"前髪ウィッグ"}, {:name=>"ロングストレート"}, {:name=>"ロングカール"}, {:name=>"ショートストレート"}, {:name=>"ショートカール"}, {:name=>"その他"}])
ap.children.create([{:name=>"浴衣"}, {:name=>"着物"}, {:name=>"振袖"}, {:name=>"長襦袢/半襦袢"}, {:name=>"水着セパレート"}, {:name=>"水着ワンピース"}, {:name=>"水着スポーツ用"}, {:name=>"その他"}])
aq.children.create([{:name=>"スカートスーツ上下"}, {:name=>"パンツスーツ上下"}, {:name=>"ドレス"}, {:name=>"パーティーバッグ"}, {:name=>"シューズ"}, {:name=>"ウェディング"}, {:name=>"その他"}])
ar.children.create([{:name=>"トップス"}, {:name=>"アウター"}, {:name=>"インナー"}, {:name=>"ワンピース"}, {:name=>"パンツ/スパッツ"}, {:name=>"スカート"}, {:name=>"パジャマ"}, {:name=>"授乳服"}, {:name=>"その他"}])
as.children.create([{:name=>"コスプレ"}, {:name=>"下着"}, {:name=>"その他"}])

ba.children.create([{:name=>"Tシャツ/カットソー(半袖/袖なし)"}, {:name=>"Tシャツ/カットソー(七分/長袖)"}, {:name=>"シャツ"}, {:name=>"ポロシャツ"}, {:name=>"タンクトップ"}, {:name=>"ニット/セーター"}, {:name=>"パーカー"}, {:name=>"カーディガン"}, {:name=>"スウェット"}, {:name=>"ジャージ"}, {:name=>"ベスト"}, {:name=>"その他"}])
bb.children.create([{:name=>"テーラードジャケット"}, {:name=>"ノーカラージャケット"}, {:name=>"Gジャン/デニムジャケット"}, {:name=>"レザージャケット"}, {:name=>"ダウンジャケット"}, {:name=>"ライダースジャケット"}, {:name=>"ミリタリージャケット"}, {:name=>"ナイロンジャケット"}, {:name=>"フライトジャケット"}, {:name=>"ダッフルコート"}, {:name=>"ピーコート"}, {:name=>"ステンカラーコート"}, {:name=>"トレンチコート"}, {:name=>"モッズコート"}, {:name=>"チェスターコート"}, {:name=>"スタジャン"}, {:name=>"スカジャン"}, {:name=>"ブルゾン"}, {:name=>"マウンテンパーカー"}, {:name=>"ダウンベスト"}, {:name=>"ポンチョ"}, {:name=>"カバーオール"}, {:name=>"その他"}])
bc.children.create([{:name=>"デニム/ジーンズ"}, {:name=>"ワークパンツ/カーゴパンツ"}, {:name=>"スラックス"}, {:name=>"チノパン"}, {:name=>"ショートパンツ"}, {:name=>"ペインターパンツ"}, {:name=>"サルエルパンツ"}, {:name=>"オーバーオール"}, {:name=>"その他"}])
bd.children.create([{:name=>"スニーカー"}, {:name=>"サンダル"}, {:name=>"ブーツ"}, {:name=>"モカシン"}, {:name=>"ドレス/ビジネス"}, {:name=>"長靴/レインシューズ"}, {:name=>"デッキシューズ"}, {:name=>"その他"}])
be.children.create([{:name=>"ショルダーバッグ"}, {:name=>"トートバッグ"}, {:name=>"ボストンバッグ"}, {:name=>"リュック/バックパック"}, {:name=>"ウエストポーチ"}, {:name=>"ボディーバッグ"}, {:name=>"ドラムバッグ"}, {:name=>"ビジネスバッグ"}, {:name=>"トラベルバッグ"}, {:name=>"メッセンジャーバッグ"}, {:name=>"エコバッグ"}, {:name=>"その他"}])
bf.children.create([{:name=>"スーツジャケット"}, {:name=>"スーツベスト"}, {:name=>"スラックス"}, {:name=>"セットアップ"}, {:name=>"その他"}])
bg.children.create([{:name=>"キャップ"}, {:name=>"ハット"}, {:name=>"ニットキャップ/ビーニー"}, {:name=>"ハンチング/ベレー帽"}, {:name=>"キャスケット"}, {:name=>"サンバイザー"}, {:name=>"その他"}])
bh.children.create([{:name=>"ネックレス"}, {:name=>"ブレスレット"}, {:name=>"バングル/リストバンド"}, {:name=>"リング"}, {:name=>"ピアス(片耳用)"}, {:name=>"ピアス(両耳用)"}, {:name=>"アンクレット"}, {:name=>"その他"}])
bi.children.create([{:name=>"長財布"}, {:name=>"折り財布"}, {:name=>"マネークリップ"}, {:name=>"コインケース/小銭入れ"}, {:name=>"名刺入れ/定期入れ"}, {:name=>"キーケース"}, {:name=>"キーホルダー"}, {:name=>"ネクタイ"}, {:name=>"手袋"}, {:name=>"ハンカチ"}, {:name=>"ベルト"}, {:name=>"マフラー"}, {:name=>"ストール"}, {:name=>"バンダナ"}, {:name=>"ネックウォーマー"}, {:name=>"サスペンダー"}, {:name=>"ウォレットチェーン"}, {:name=>"サングラス/メガネ"}, {:name=>"モバイルケース/カバー"}, {:name=>"手帳"}, {:name=>"ストラップ"}, {:name=>"ネクタイピン"}, {:name=>"カフリンクス"}, {:name=>"イヤマフラー"}, {:name=>"傘"}, {:name=>"レインコート"}, {:name=>"ミラー"}, {:name=>"タバコグッズ"}, {:name=>"その他"}])
bj.children.create([{:name=>"腕時計(アナログ)"}, {:name=>"腕時計(デジタル)"}, {:name=>"ラバーベルト"}, {:name=>"レザーベルト"}, {:name=>"金属ベルト"}, {:name=>"その他"}])
bk.children.create([{:name=>"一般水着"}, {:name=>"スポーツ用"}, {:name=>"アクセサリー"}, {:name=>"その他"}])
bl.children.create([{:name=>"ソックス"}, {:name=>"レギンス/スパッツ"}, {:name=>"レッグウォーマー"}, {:name=>"その他"}])
bm.children.create([{:name=>"トランクス"}, {:name=>"ボクサーパンツ"}, {:name=>"その他"}])
bn.children.create([{:name=>"すべて"}])

ca.children.create([{:name=>"トップス"}, {:name=>"アウター"}, {:name=>"パンツ"}, {:name=>"スカート"}, {:name=>"ワンピース"}, {:name=>"ベビードレス"}, {:name=>"おくるみ"}, {:name=>"下着/肌着"}, {:name=>"パジャマ"}, {:name=>"ロンパース"}, {:name=>"その他"}])
cb.children.create([{:name=>"トップス"}, {:name=>"アウター"}, {:name=>"パンツ"}, {:name=>"おくるみ"}, {:name=>"下着/肌着"}, {:name=>"パジャマ"}, {:name=>"ロンパース"}, {:name=>"その他"}])
cc.children.create([{:name=>"トップス"}, {:name=>"アウター"}, {:name=>"パンツ"}, {:name=>"おくるみ"}, {:name=>"下着/肌着"}, {:name=>"パジャマ"}, {:name=>"ロンパース"}, {:name=>"その他"}])
cd.children.create([{:name=>"コート"}, {:name=>"ジャケット/上着"}, {:name=>"トップス(Tシャツ/カットソー)"}, {:name=>"トップス(トレーナー)"}, {:name=>"トップス(チュニック)"}, {:name=>"トップス(タンクトップ)"}, {:name=>"トップス(その他)"}, {:name=>"スカート"}, {:name=>"パンツ"}, {:name=>"ワンピース"}, {:name=>"セットアップ"}, {:name=>"パジャマ"}, {:name=>"フォーマル/ドレス"}, {:name=>"和服"}, {:name=>"浴衣"}, {:name=>"甚平"}, {:name=>"水着"}, {:name=>"その他"}])
ce.children.create([{:name=>"コート"}, {:name=>"ジャケット/上着"}, {:name=>"トップス(Tシャツ/カットソー)"}, {:name=>"トップス(トレーナー)"}, {:name=>"トップス(その他)"}, {:name=>"パンツ"}, {:name=>"セットアップ"}, {:name=>"パジャマ"}, {:name=>"フォーマル/ドレス"}, {:name=>"和服"}, {:name=>"浴衣"}, {:name=>"甚平"}, {:name=>"水着"}, {:name=>"その他"}])
cf.children.create([{:name=>"コート"}, {:name=>"ジャケット/上着"}, {:name=>"トップス(Tシャツ/カットソー)"}, {:name=>"トップス(トレーナー)"}, {:name=>"トップス(その他)"}, {:name=>"ボトムス"}, {:name=>"パジャマ"}])
cg.children.create([{:name=>"スニーカー"}, {:name=>"サンダル"}, {:name=>"ブーツ"}, {:name=>"長靴"}, {:name=>"その他"}])
ch.children.create([{:name=>"靴下/スパッツ"}, {:name=>"帽子"}, {:name=>"エプロン"}, {:name=>"サスペンダー"}, {:name=>"タイツ"}, {:name=>"ハンカチ"}, {:name=>"バンダナ"}, {:name=>"ベルト"}, {:name=>"マフラー"}, {:name=>"傘"}, {:name=>"手袋"}, {:name=>"スタイ"}, {:name=>"バッグ"}, {:name=>"その他"}])
ci.children.create([{:name=>"おむつ用品"}, {:name=>"おまる/補助便座"}, {:name=>"トレーニングパンツ"}, {:name=>"ベビーバス"}, {:name=>"お風呂用品"}, {:name=>"その他"}])
cj.children.create([{:name=>"ベビーカー"}, {:name=>"抱っこひも/スリング"}, {:name=>"チャイルドシート"}, {:name=>"その他"}])
ck.children.create([{:name=>"ミルク"}, {:name=>"ベビーフード"}, {:name=>"ベビー用食器"}, {:name=>"その他"}])
cl.children.create([{:name=>"ベッド"}, {:name=>"布団/毛布"}, {:name=>"イス"}, {:name=>"たんす"}, {:name=>"その他"}])
cm.children.create([{:name=>"おふろのおもちゃ"}, {:name=>"がらがら"}, {:name=>"オルゴール"}, {:name=>"ベビージム"}, {:name=>"手押し車/カタカタ"}, {:name=>"知育玩具"}, {:name=>"その他"}])
cn.children.create([{:name=>"お宮参り用品"}, {:name=>"お食い初め用品"}, {:name=>"アルバム"}, {:name=>"手形/足形"}, {:name=>"その他"}])
co.children.create([{:name=>"母子手帳用品"}, {:name=>"その他"}])

da.children.create([{:name=>"食器"}, {:name=>"調理器具"}, {:name=>"収納/キッチン雑貨"}, {:name=>"弁当用品"}, {:name=>"カトラリー(スプーン等)"}, {:name=>"テーブル用品"}, {:name=>"容器"}, {:name=>"エプロン"}, {:name=>"アルコールグッズ"}, {:name=>"浄水機"}, {:name=>"その他"}])
db.children.create([{:name=>"セミシングルベッド"}, {:name=>"シングルベッド"}, {:name=>"セミダブルベッド"}, {:name=>"ダブルベッド"}, {:name=>"ワイドダブルベッド"}, {:name=>"クイーンベッド"}, {:name=>"キングベッド"}, {:name=>"脚付きマットレスベッド"}, {:name=>"マットレス"}, {:name=>"すのこベッド"}, {:name=>"ロフトベッド/システムベッド"}, {:name=>"簡易ベッド/折りたたみベッド"}, {:name=>"収納付き"}, {:name=>"その他"}])
dc.children.create([{:name=>"ソファセット"}, {:name=>"シングルソファ"}, {:name=>"ラブソファ"}, {:name=>"トリプルソファ"}, {:name=>"オットマン"}, {:name=>"コーナーソファ"}, {:name=>"ビーズソファ/クッションソファ"}, {:name=>"ローソファ/フロアソファ"}, {:name=>"ソファベッド"}, {:name=>"応接セット"}, {:name=>"ソファカバー"}, {:name=>"リクライニングソファ"}, {:name=>"その他"}])
dd.children.create([{:name=>"一般"}, {:name=>"スツール"}, {:name=>"ダイニングチェア"}, {:name=>"ハイバックチェア"}, {:name=>"ロッキングチェア"}, {:name=>"座椅子"}, {:name=>"折り畳みイス"}, {:name=>"デスクチェア"}, {:name=>"その他"}])
de.children.create([{:name=>"こたつ"}, {:name=>"カウンターテーブル"}, {:name=>"サイドテーブル"}, {:name=>"センターテーブル"}, {:name=>"ダイニングテーブル"}, {:name=>"座卓/ちゃぶ台"}, {:name=>"アウトドア用"}, {:name=>"パソコン用"}, {:name=>"事務机/学習机"}, {:name=>"その他"}])
df.children.create([{:name=>"リビング収納"}, {:name=>"キッチン収納"}, {:name=>"玄関/屋外収納"}, {:name=>"バス/トイレ収納"}, {:name=>"本収納"}, {:name=>"本/CD/DVD収納"}, {:name=>"洋服タンス/押入れ収納"}, {:name=>"電話台/ファックス台"}, {:name=>"ドレッサー/鏡台"}, {:name=>"棚/ラック"}, {:name=>"ケース/ボックス"}, {:name=>"その他"}])
dg.children.create([{:name=>"ラグ"}, {:name=>"カーペット"}, {:name=>"ホットカーペット"}, {:name=>"玄関/キッチンマット"}, {:name=>"トイレ/バスマット"}, {:name=>"その他"}])
dh.children.create([{:name=>"カーテン"}, {:name=>"ブラインド"}, {:name=>"ロールスクリーン"}, {:name=>"のれん"}, {:name=>"その他"}])
di.children.create([{:name=>"蛍光灯/電球"}, {:name=>"天井照明"}, {:name=>"フロアスタンド"}, {:name=>"その他"}])
dj.children.create([{:name=>"布団/毛布"}, {:name=>"枕"}, {:name=>"シーツ/カバー"}, {:name=>"その他"}])
dk.children.create([{:name=>"ごみ箱"}, {:name=>"ウェルカムボード"}, {:name=>"オルゴール"}, {:name=>"クッション"}, {:name=>"クッションカバー"}, {:name=>"スリッパラック"}, {:name=>"ティッシュボックス"}, {:name=>"バスケット/かご"}, {:name=>"フォトフレーム"}, {:name=>"マガジンラック"}, {:name=>"モビール"}, {:name=>"花瓶"}, {:name=>"灰皿"}, {:name=>"傘立て"}, {:name=>"小物入れ"}, {:name=>"置時計"}, {:name=>"掛時計/柱時計"}, {:name=>"鏡(立て掛け式)"}, {:name=>"鏡(壁掛け式)"}, {:name=>"置物"}, {:name=>"風鈴"}, {:name=>"植物/観葉植物"}, {:name=>"その他"}])
dl.children.create([{:name=>"正月"}, {:name=>"成人式"}, {:name=>"バレンタインデー"}, {:name=>"ひな祭り"}, {:name=>"子どもの日"}, {:name=>"母の日"}, {:name=>"父の日"}, {:name=>"サマーギフト/お中元"}, {:name=>"夏/夏休み"}, {:name=>"ハロウィン"}, {:name=>"敬老の日"}, {:name=>"七五三"}, {:name=>"お歳暮"}, {:name=>"クリスマス"}, {:name=>"冬一般"}, {:name=>"その他"}])
dm.children.create([{:name=>"すべて"}])

ea.children.create([{:name=>"文学/小説"}, {:name=>"人文/社会"}, {:name=>"ノンフィクション/教養"}, {:name=>"地図/旅行ガイド"}, {:name=>"ビジネス/経済"}, {:name=>"健康/医学"}, {:name=>"コンピュータ/IT"}, {:name=>"趣味/スポーツ/実用"}, {:name=>"住まい/暮らし/子育て"}, {:name=>"アート/エンタメ"}, {:name=>"洋書"}, {:name=>"絵本"}, {:name=>"参考書"}, {:name=>"その他"}])
eb.children.create([{:name=>"全巻セット"}, {:name=>"少年漫画"}, {:name=>"少女漫画"}, {:name=>"青年漫画"}, {:name=>"女性漫画"}, {:name=>"同人誌"}, {:name=>"その他"}])
ec.children.create([{:name=>"アート/エンタメ/ホビー"}, {:name=>"ファッション"}, {:name=>"ニュース/総合"}, {:name=>"趣味/スポーツ"}, {:name=>"その他"}])
ed.children.create([{:name=>"邦楽"}, {:name=>"洋楽"}, {:name=>"アニメ"}, {:name=>"クラシック"}, {:name=>"K-POP/アジア"}, {:name=>"キッズ/ファミリー"}, {:name=>"その他"}])
ee.children.create([{:name=>"外国映画"}, {:name=>"日本映画"}, {:name=>"アニメ"}, {:name=>"TVドラマ"}, {:name=>"ミュージック"}, {:name=>"お笑い/バラエティ"}, {:name=>"スポーツ/フィットネス"}, {:name=>"キッズ/ファミリー"}, {:name=>"その他"}])
ef.children.create([{:name=>"邦楽"}, {:name=>"洋楽"}, {:name=>"その他"}])
eg.children.create([{:name=>"家庭用ゲーム本体"}, {:name=>"家庭用ゲームソフト"}, {:name=>"携帯用ゲーム本体"}, {:name=>"携帯用ゲームソフト"}, {:name=>"PCゲーム"}, {:name=>"その他"}])

fa.children.create([{:name=>"キャラクターグッズ"}, {:name=>"ぬいぐるみ"}, {:name=>"小物/アクセサリー"}, {:name=>"模型/プラモデル"}, {:name=>"ミニカー"}, {:name=>"トイラジコン"}, {:name=>"プラモデル"}, {:name=>"ホビーラジコン"}, {:name=>"鉄道模型"}, {:name=>"その他"}])
fb.children.create([{:name=>"アイドル"}, {:name=>"ミュージシャン"}, {:name=>"タレント/お笑い芸人"}, {:name=>"スポーツ選手"}, {:name=>"その他"}])
fc.children.create([{:name=>"ストラップ"}, {:name=>"キーホルダー"}, {:name=>"バッジ"}, {:name=>"カード"}, {:name=>"クリアファイル"}, {:name=>"ポスター"}, {:name=>"タオル"}, {:name=>"その他"}])
fd.children.create([{:name=>"遊戯王"}, {:name=>"マジック：ザ・ギャザリング"}, {:name=>"ポケモンカードゲーム"}, {:name=>"デュエルマスターズ"}, {:name=>"バトルスピリッツ"}, {:name=>"プリパラ"}, {:name=>"アイカツ"}, {:name=>"カードファイト!! ヴァンガード"}, {:name=>"ヴァイスシュヴァルツ"}, {:name=>"プロ野球オーナーズリーグ"}, {:name=>"ベースボールヒーローズ"}, {:name=>"ドラゴンボール"}, {:name=>"スリーブ"}, {:name=>"その他"}])
fe.children.create([{:name=>"コミック/アニメ"}, {:name=>"特撮"}, {:name=>"ゲームキャラクター"}, {:name=>"SF/ファンタジー/ホラー"}, {:name=>"アメコミ"}, {:name=>"スポーツ"}, {:name=>"ミリタリー"}, {:name=>"その他"}])
ff.children.create([{:name=>"エレキギター"}, {:name=>"アコースティックギター"}, {:name=>"ベース"}, {:name=>"エフェクター"}, {:name=>"アンプ"}, {:name=>"弦楽器"}, {:name=>"管楽器"}, {:name=>"鍵盤楽器"}, {:name=>"打楽器"}, {:name=>"和楽器"}, {:name=>"楽譜/スコア"}, {:name=>"レコーディング/PA機器"}, {:name=>"DJ機器"}, {:name=>"DTM/DAW"}, {:name=>"その他"}])
fg.children.create([{:name=>"武具"}, {:name=>"使用済切手/官製はがき"}, {:name=>"旧貨幣/金貨/銀貨/記念硬貨"}, {:name=>"印刷物"}, {:name=>"ノベルティグッズ"}, {:name=>"その他"}])
fh.children.create([{:name=>"トイガン"}, {:name=>"個人装備"}, {:name=>"その他"}])
fi.children.create([{:name=>"陶芸"}, {:name=>"ガラス"}, {:name=>"漆芸"}, {:name=>"金属工芸"}, {:name=>"絵画/タペストリ"}, {:name=>"版画"}, {:name=>"彫刻/オブジェクト"}, {:name=>"書"}, {:name=>"写真"}, {:name=>"その他"}])
fj.children.create([{:name=>"画材"}, {:name=>"額縁"}, {:name=>"その他"}])
fk.children.create([{:name=>"トランプ/UNO"}, {:name=>"カルタ/百人一首"}, {:name=>"ダーツ"}, {:name=>"ビリヤード"}, {:name=>"麻雀"}, {:name=>"パズル/ジグソーパズル"}, {:name=>"囲碁/将棋"}, {:name=>"オセロ/チェス"}, {:name=>"人生ゲーム"}, {:name=>"野球/サッカーゲーム"}, {:name=>"スポーツ"}, {:name=>"三輪車/乗り物"}, {:name=>"ヨーヨー"}, {:name=>"模型製作用品"}, {:name=>"鉄道"}, {:name=>"航空機"}, {:name=>"アマチュア無線"}, {:name=>"パチンコ/パチスロ"}, {:name=>"その他"}])

ga.children.create([{:name=>"ファンデーション"}, {:name=>"化粧下地"}, {:name=>"コントロールカラー"}, {:name=>"BBクリーム"}, {:name=>"CCクリーム"}, {:name=>"コンシーラー"}, {:name=>"フェイスパウダー"}, {:name=>"トライアルセット/サンプル"}, {:name=>"その他"}])
gb.children.create([{:name=>"アイシャドウ"}, {:name=>"口紅"}, {:name=>"リップグロス"}, {:name=>"リップライナー"}, {:name=>"チーク"}, {:name=>"フェイスカラー"}, {:name=>"マスカラ"}, {:name=>"アイライナー"}, {:name=>"つけまつげ"}, {:name=>"アイブロウペンシル"}, {:name=>"パウダーアイブロウ"}, {:name=>"眉マスカラ"}, {:name=>"トライアルセット/サンプル"}, {:name=>"メイク道具/化粧小物"}, {:name=>"美顔用品/美顔ローラー"}, {:name=>"その他"}])
gc.children.create([{:name=>"ネイルカラー"}, {:name=>"カラージェル"}, {:name=>"ネイルベースコート/トップコート"}, {:name=>"ネイルアート用品"}, {:name=>"ネイルパーツ"}, {:name=>"ネイルチップ/付け爪"}, {:name=>"手入れ用具"}, {:name=>"除光液"}, {:name=>"その他"}])
gd.children.create([{:name=>"香水(女性用)"}, {:name=>"香水(男性用)"}, {:name=>"ユニセックス"}, {:name=>"ボディミスト"}, {:name=>"その他"}])
ge.children.create([{:name=>"化粧水/ローション"}, {:name=>"乳液/ミルク"}, {:name=>"美容液"}, {:name=>"フェイスクリーム"}, {:name=>"洗顔料"}, {:name=>"クレンジング/メイク落とし"}, {:name=>"パック/フェイスマスク"}, {:name=>"ジェル/ゲル"}, {:name=>"ブースター/導入液"}, {:name=>"アイケア"}, {:name=>"リップケア"}, {:name=>"トライアルセット/サンプル"}, {:name=>"洗顔グッズ"}, {:name=>"その他"}])
gf.children.create([{:name=>"シャンプー"}, {:name=>"トリートメント"}, {:name=>"コンディショナー"}, {:name=>"リンス"}, {:name=>"スタイリング剤"}, {:name=>"カラーリング剤"}, {:name=>"ブラシ"}, {:name=>"その他"}])
gg.children.create([{:name=>"オイル/クリーム"}, {:name=>"ハンドクリーム"}, {:name=>"ローション"}, {:name=>"日焼け止め/サンオイル"}, {:name=>"ボディソープ"}, {:name=>"入浴剤"}, {:name=>"制汗/デオドラント"}, {:name=>"フットケア"}, {:name=>"その他"}])
gh.children.create([{:name=>"口臭防止/エチケット用品"}, {:name=>"歯ブラシ"}, {:name=>"その他"}])
gi.children.create([{:name=>"エッセンシャルオイル"}, {:name=>"芳香器"}, {:name=>"お香/香炉"}, {:name=>"キャンドル"}, {:name=>"リラクゼーショングッズ"}, {:name=>"その他"}])
gj.children.create([{:name=>"ダイエット食品"}, {:name=>"エクササイズ用品"}, {:name=>"体重計"}, {:name=>"体脂肪計"}, {:name=>"その他"}])
gk.children.create([{:name=>"健康用品"}, {:name=>"看護/介護用品"}, {:name=>"救急/衛生用品"}, {:name=>"その他"}])

ha.children.create([{:name=>"スマートフォン本体"}, {:name=>"バッテリー/充電器"}, {:name=>"携帯電話本体"}, {:name=>"PHS本体"}, {:name=>"その他"}])
hb.children.create([{:name=>"Android用ケース"}, {:name=>"iPhone用ケース"}, {:name=>"カバー"}, {:name=>"イヤホンジャック"}, {:name=>"ストラップ"}, {:name=>"フィルム"}, {:name=>"自撮り棒"}, {:name=>"その他"}])
hc.children.create([{:name=>"タブレット"}, {:name=>"ノートPC"}, {:name=>"デスクトップ型PC"}, {:name=>"ディスプレイ"}, {:name=>"電子ブックリーダー"}, {:name=>"PC周辺機器"}, {:name=>"PCパーツ"}, {:name=>"その他"}])
hd.children.create([{:name=>"デジタルカメラ"}, {:name=>"ビデオカメラ"}, {:name=>"レンズ(単焦点)"}, {:name=>"レンズ(ズーム)"}, {:name=>"フィルムカメラ"}, {:name=>"防犯カメラ"}, {:name=>"その他"}])
he.children.create([{:name=>"テレビ"}, {:name=>"プロジェクター"}, {:name=>"ブルーレイレコーダー"}, {:name=>"DVDレコーダー"}, {:name=>"ブルーレイプレーヤー"}, {:name=>"DVDプレーヤー"}, {:name=>"映像用ケーブル"}, {:name=>"その他"}])
hf.children.create([{:name=>"ポータブルプレーヤー"}, {:name=>"イヤフォン"}, {:name=>"ヘッドフォン"}, {:name=>"アンプ"}, {:name=>"スピーカー"}, {:name=>"ケーブル/シールド"}, {:name=>"ラジオ"}, {:name=>"その他"}])
hg.children.create([{:name=>"ヘアドライヤー"}, {:name=>"ヘアアイロン"}, {:name=>"美容機器"}, {:name=>"電気シェーバー"}, {:name=>"電動歯ブラシ"}])
hh.children.create([{:name=>"エアコン"}, {:name=>"空気清浄器"}, {:name=>"加湿器"}, {:name=>"扇風機"}, {:name=>"除湿機"}, {:name=>"ファンヒーター"}, {:name=>"電気ヒーター"}, {:name=>"オイルヒーター"}, {:name=>"ストーブ"}, {:name=>"ホットカーペット"}, {:name=>"こたつ"}, {:name=>"電気毛布"}, {:name=>"その他"}])
hi.children.create([{:name=>"冷蔵庫"}, {:name=>"洗濯機"}, {:name=>"炊飯器"}, {:name=>"電子レンジ/オーブン"}, {:name=>"調理機器"}, {:name=>"アイロン"}, {:name=>"掃除機"}, {:name=>"エスプレッソマシン"}, {:name=>"コーヒーメーカー"}, {:name=>"衣類乾燥機"}, {:name=>"その他"}])
hj.children.create([{:name=>"その他"}])

ia.children.create([{:name=>"クラブ"}, {:name=>"ウエア(男性用)"}, {:name=>"ウエア(女性用)"}, {:name=>"バッグ"}, {:name=>"シューズ(男性用)"}, {:name=>"シューズ(女性用)"}, {:name=>"アクセサリー"}, {:name=>"その他"}])
ib.children.create([{:name=>"ロッド"}, {:name=>"リール"}, {:name=>"ルアー用品"}, {:name=>"ウエア"}, {:name=>"釣り糸/ライン"}, {:name=>"その他"}])
ic.children.create([{:name=>"自転車本体"}, {:name=>"ウエア"}, {:name=>"パーツ"}, {:name=>"アクセサリー"}, {:name=>"バッグ"}, {:name=>"工具/メンテナンス"}, {:name=>"その他"}])
id.children.create([{:name=>"ランニング"}, {:name=>"ウォーキング"}, {:name=>"ヨガ"}, {:name=>"トレーニング用品"}, {:name=>"その他"}])
ie.children.create([{:name=>"ウェア"}, {:name=>"シューズ"}, {:name=>"グローブ"}, {:name=>"バット"}, {:name=>"アクセサリー"}, {:name=>"防具"}, {:name=>"練習機器"}, {:name=>"記念グッズ"}, {:name=>"応援グッズ"}, {:name=>"その他"}])
iff.children.create([{:name=>"ウェア"}, {:name=>"シューズ"}, {:name=>"ボール"}, {:name=>"アクセサリー"}, {:name=>"記念グッズ"}, {:name=>"応援グッズ"}, {:name=>"その他"}])
ig.children.create([{:name=>"ラケット(硬式用)"}, {:name=>"ラケット(軟式用)"}, {:name=>"ウェア"}, {:name=>"シューズ"}, {:name=>"ボール"}, {:name=>"アクセサリー"}, {:name=>"記念グッズ"}, {:name=>"応援グッズ"}, {:name=>"その他"}])
ih.children.create([{:name=>"ボード"}, {:name=>"バインディング"}, {:name=>"ブーツ(男性用)"}, {:name=>"ブーツ(女性用)"}, {:name=>"ブーツ(子ども用)"}, {:name=>"ウエア/装備(男性用)"}, {:name=>"ウエア/装備(女性用)"}, {:name=>"ウエア/装備(子ども用)"}, {:name=>"アクセサリー"}, {:name=>"バッグ"}, {:name=>"その他"}])
ii.children.create([{:name=>"板"}, {:name=>"ブーツ(男性用)"}, {:name=>"ブーツ(女性用)"}, {:name=>"ブーツ(子ども用)"}, {:name=>"ビンディング"}, {:name=>"ウエア(男性用)"}, {:name=>"ウエア(女性用)"}, {:name=>"ウエア(子ども用)"}, {:name=>"ストック"}, {:name=>"その他"}])
ij.children.create([{:name=>"ダンス/バレエ"}, {:name=>"サーフィン"}, {:name=>"バスケットボール"}, {:name=>"バドミントン"}, {:name=>"バレーボール"}, {:name=>"スケートボード"}, {:name=>"陸上競技"}, {:name=>"ラグビー"}, {:name=>"アメリカンフットボール"}, {:name=>"ボクシング"}, {:name=>"ボウリング"}, {:name=>"その他"}])
ik.children.create([{:name=>"テント/タープ"}, {:name=>"ライト/ランタン"}, {:name=>"寝袋/寝具"}, {:name=>"テーブル/チェア"}, {:name=>"ストーブ/コンロ"}, {:name=>"調理器具"}, {:name=>"食器"}, {:name=>"登山用品"}, {:name=>"その他"}])
il.children.create([{:name=>"旅行用品"}, {:name=>"その他"}])

ja.children.create([{:name=>"ピアス"}, {:name=>"イヤリング"}, {:name=>"ネックレス"}, {:name=>"ブレスレット"}, {:name=>"リング"}, {:name=>"チャーム"}, {:name=>"ヘアゴム"}, {:name=>"アンクレット"}, {:name=>"その他"}])
jb.children.create([{:name=>"バッグ(女性用)"}, {:name=>"バッグ(男性用)"}, {:name=>"財布(女性用)"}, {:name=>"財布(男性用)"}, {:name=>"ファッション雑貨"}, {:name=>"その他"}])
jc.children.create([{:name=>"アクセサリー(男性用)"}, {:name=>"時計(女性用)"}, {:name=>"時計(男性用)"}, {:name=>"その他"}])
jd.children.create([{:name=>"キッチン用品"}, {:name=>"家具"}, {:name=>"文房具"}, {:name=>"アート/写真"}, {:name=>"アロマ/キャンドル"}, {:name=>"フラワー/ガーデン"}, {:name=>"その他"}])
je.children.create([{:name=>"クラフト/布製品"}, {:name=>"おもちゃ/人形"}, {:name=>"その他"}])
jf.children.create([{:name=>"ファッション雑貨"}, {:name=>"スタイ/よだれかけ"}, {:name=>"外出用品"}, {:name=>"ネームタグ"}, {:name=>"その他"}])
jg.children.create([{:name=>"各種パーツ"}, {:name=>"生地/糸"}, {:name=>"型紙/パターン"}, {:name=>"その他"}])
jh.children.create([{:name=>"Ingress"}, {:name=>"クリエイターズ宇宙兄弟"}])
ji.children.create([{:name=>"すべて"}])

ka.children.create([{:name=>"男性アイドル"}, {:name=>"女性アイドル"}, {:name=>"韓流"}, {:name=>"国内アーティスト"}, {:name=>"海外アーティスト"}, {:name=>"音楽フェス"}, {:name=>"声優/アニメ"}, {:name=>"その他"}])
kb.children.create([{:name=>"サッカー"}, {:name=>"野球"}, {:name=>"テニス"}, {:name=>"格闘技/プロレス"}, {:name=>"相撲/武道"}, {:name=>"ゴルフ"}, {:name=>"バレーボール"}, {:name=>"バスケットボール"}, {:name=>"モータースポーツ"}, {:name=>"ウィンタースポーツ"}, {:name=>"その他"}])
kc.children.create([{:name=>"ミュージカル"}, {:name=>"演劇"}, {:name=>"伝統芸能"}, {:name=>"落語"}, {:name=>"お笑い"}, {:name=>"オペラ"}, {:name=>"サーカス"}, {:name=>"バレエ"}, {:name=>""}, {:name=>"その他"}])
kd.children.create([{:name=>"声優/アニメ"}, {:name=>"キッズ/ファミリー"}, {:name=>"トークショー/講演会"}, {:name=>"その他"}])
ke.children.create([{:name=>"邦画"}, {:name=>""}, {:name=>"洋画その他"}])
kf.children.create([{:name=>"遊園地/テーマパーク"}, {:name=>"美術館/博物館"}, {:name=>"スキー場"}, {:name=>"ゴルフ場"}, {:name=>"フィットネスクラブ"}, {:name=>"プール"}, {:name=>"ボウリング場"}, {:name=>"水族館"}, {:name=>"動物園"}, {:name=>"その他"}])
kg.children.create([{:name=>"ショッピング"}, {:name=>"レストラン/食事券"}, {:name=>"フード/ドリンク券"}, {:name=>"宿泊券"}, {:name=>"その他"}])
kh.children.create([{:name=>"すべて"}])

la.children.create([{:name=>"  国内自動車本体"}, {:name=>"外国自動車本体"}])
lb.children.create([{:name=>"タイヤ/ホイールセット"}, {:name=>"タイヤ"}, {:name=>"ホイール"}, {:name=>"その他"}])
lc.children.create([{:name=>"サスペンション"}, {:name=>"ブレーキ"}, {:name=>"外装、エアロパーツ"}, {:name=>"ライト"}, {:name=>"内装品、シート"}, {:name=>"ステアリング"}, {:name=>"マフラー・排気系"}, {:name=>"エンジン、過給器、冷却装置"}, {:name=>"クラッチ、ミッション、駆動系"}, {:name=>"電装品"}, {:name=>"補強パーツ"}, {:name=>"汎用パーツ"}, {:name=>"外国自動車用パーツ"}, {:name=>"その他"}])
ld.children.create([{:name=>"車内アクセサリー"}, {:name=>"カーナビ"}, {:name=>"カーオーディオ"}, {:name=>"車外アクセサリー"}, {:name=>"メンテナンス用品"}, {:name=>"チャイルドシート"}, {:name=>"ドライブレコーダー"}, {:name=>"レーダー探知機"}, {:name=>"カタログ/マニュアル"}, {:name=>"セキュリティ"}, {:name=>"ETC"}, {:name=>"その他"}])
le.children.create([{:name=>"すべて"}])
lf.children.create([{:name=>"タイヤ"}, {:name=>"マフラー"}, {:name=>"エンジン、冷却装置"}, {:name=>"カウル、フェンダー、外装"}, {:name=>"サスペンション"}, {:name=>"ホイール"}, {:name=>"シート"}, {:name=>"ブレーキ"}, {:name=>"タンク"}, {:name=>"ライト、ウィンカー"}, {:name=>"チェーン、スプロケット、駆動系"}, {:name=>"メーター"}, {:name=>"電装系"}, {:name=>"ミラー"}, {:name=>"外国オートバイ用パーツ"}, {:name=>"その他"}])
lg.children.create([{:name=>"ヘルメット/シールド"}, {:name=>"バイクウエア/装備"}, {:name=>"アクセサリー"}, {:name=>"メンテナンス"}, {:name=>"カタログ/マニュアル"}, {:name=>"その他"}])

ma.children.create([{:name=>"すべて"}])
mb.children.create([{:name=>"ペットフード"}, {:name=>"犬用品"}, {:name=>"猫用品"}, {:name=>"魚用品/水草"}, {:name=>"小動物用品"}, {:name=>"爬虫類/両生類用品"}, {:name=>"かご/おり"}, {:name=>"鳥用品"}, {:name=>"虫類用品"}, {:name=>"その他"}])
mc.children.create([{:name=>"菓子"}, {:name=>"米"}, {:name=>"野菜"}, {:name=>"果物"}, {:name=>"調味料"}, {:name=>"魚介類(加工食品)"}, {:name=>"肉類(加工食品)"}, {:name=>"その他 加工食品"}, {:name=>"その他"}])
md.children.create([{:name=>"コーヒー"}, {:name=>"ソフトドリンク"}, {:name=>"ミネラルウォーター"}, {:name=>"茶"}, {:name=>"ウイスキー"}, {:name=>"ワイン"}, {:name=>"ブランデ"}, {:name=>"焼酎"}, {:name=>"日本酒"}, {:name=>"ビール、発泡酒"}, {:name=>"その他"}])
me.children.create([{:name=>"タオル/バス用品"}, {:name=>"日用品/生活雑貨"}, {:name=>"洗剤/柔軟剤"}, {:name=>"旅行用品"}, {:name=>"防災関連グッズ"}, {:name=>"その他"}])
mf.children.create([{:name=>"雑貨"}, {:name=>"工芸品"}, {:name=>"家具"}, {:name=>"印刷物"}, {:name=>"その他"}])
mg.children.create([{:name=>"筆記具"}, {:name=>"ノート/メモ帳"}, {:name=>"テープ/マスキングテープ"}, {:name=>"カレンダー/スケジュール"}, {:name=>"アルバム/スクラップ"}, {:name=>"ファイル/バインダー"}, {:name=>"はさみ/カッター"}, {:name=>"カードホルダー/名刺管理"}, {:name=>"のり/ホッチキス"}, {:name=>"その他"}])
mh.children.create([{:name=>"オフィス用品一般"}, {:name=>"オフィス家具"}, {:name=>"店舗用品"}, {:name=>"OA機器"}, {:name=>"ラッピング/包装"}, {:name=>"その他"}])
mi.children.create([{:name=>"すべて"}])
