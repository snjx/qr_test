# ベースイメージとして公式のNginxイメージを使用
FROM nginx:alpine

# カスタムNginx設定ファイルをコピー
COPY nginx.conf /etc/nginx/nginx.conf

# HTMLファイルをWebサーバのルートディレクトリにコピー
COPY index.html /usr/share/nginx/html/

# オレオレ証明書をコピー
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/
COPY ssl /etc/nginx/ssl
