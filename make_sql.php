<?php
$fileName = "tokyo_post.csv";

$fp = fopen($fileName,"r");

while(($data = fgetcsv($fp,",")) !== FALSE)
{
  $code = $data[2];
  $kana1 = "'" . $data[3] . "'";
  $kana2 = "'" . $data[4] . "'";
  $kana3 = "'" . $data[5] . "'";
  $address1 = "'" . $data[6] . "'";
  $address2 = "'" . $data[7] . "'";
  $address3 = "'" . $data[8] . "'";

  $sql = "insert into tokyo(code,kana1,kana2,kana3,address1,address2,address3) values($code,$kana1,$kana2,$kana3,$address1,$address2,$address3);" . "\n";

  // var_dump($sql);

  $fileName2 = "insert.sql";
  $fp2 = fopen($fileName2,"a");
  fwrite($fp2,$sql);
  fclose($fp2);

}

fclose($fp);
