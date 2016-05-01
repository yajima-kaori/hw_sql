-- 1.　郵便番号「1600023」に該当するレコードを取得する SQL
select * from tokyo where code = 1600023;

-- 2. 「新宿区」の住所のうち、郵便番号の数字の昇順(数字の小さいものが先)で並べた上位10件のレコードを取得するSQL
select * from tokyo where address2 = '新宿区' order by code asc limit 10;

-- 3.　2 と同じ条件で、上位11件目から20件目までを取得する SQL
select * from tokyo where address2 = '新宿区' order by code asc limit 10 offset 11;

-- 4.　市区町村の読みが「シ」から始まる全てのレコードを取得する SQL
select * from tokyo where kana2 like 'ｼ%';

-- 5.　市区町村かそれ以下の町域名に「新宿」という文字列が含まれる全てのレコードを取得する SQL
select * from tokyo where address2 like '新宿%' or address3 like '新宿%';

-- 6. 「新宿区」「渋谷区」「世田谷区」の３区全てのレコードを取得するSQL
select * from tokyo where address2 in ('新宿区','渋谷区','世田谷区');

-- 7. 「東京都新宿区北町」のレコードを取得するSQL
select * from tokyo where address1='東京都' and address2='新宿区' and address3='北町';


-- 8. 「新宿区」に割当てられているの郵便番号の件数を取得する SQL
select count(id) from tokyo where address2='新宿区';

-- 9.　町域名が「以下に掲載がない場合」となっているレコードの町域名を空文字に変更する SQL
update tokyo set address3='' where address3='以下に掲載がない場合';

-- 10. 「新宿区」以外のレコードを全て削除する SQL
-- select * from tokyo where not(address2='新宿区');
delete from tokyo where not(address2='新宿区');
