# 2048 정적 웹 게임 - Nginx Alpine 기반
FROM nginx:alpine

# 기본 nginx 설정 제거 (정적 파일만 서빙)
RUN rm -rf /usr/share/nginx/html/*

# 정적 파일 복사
COPY index.html favicon.ico /usr/share/nginx/html/
COPY js/ /usr/share/nginx/html/js/
COPY style/ /usr/share/nginx/html/style/
COPY meta/ /usr/share/nginx/html/meta/

# 포트 노출
EXPOSE 80

# Nginx foreground 실행
CMD ["nginx", "-g", "daemon off;"]
