# Nginx의 경량 이미지 사용
FROM nginx:alpine

# 작업 디렉토리 설정
WORKDIR /usr/share/nginx/html

# 현재 디렉토리의 index.html 파일을 Nginx 기본 경로로 복사
COPY index.html /usr/share/nginx/html/

# Nginx가 기본적으로 사용하는 80번 포트 노출
EXPOSE 80

# Nginx 실행
CMD ["nginx", "-g", "daemon off;"]