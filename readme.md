# QRが動くかテストする

* オレオレ証明書を作成する
  ```
  mkdir ssl
  cd ssl
  openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout selfsigned.key -out selfsigned.crt -subj "/CN=localhost"
  cd ..
  ```

* ビルドして起動する
  ```
  docker build -t qr_code_scanner .
  docker run -p 80:80 -p 443:443 qr_code_scanner
  ```

* 自PCのIPを確認する。
  iOS のブラウザで、https://自PCのIP/ にアクセスする。


