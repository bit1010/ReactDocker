# Nginx를 베이스 이미지로 사용
FROM nginx:1.21

# Nginx 설정 파일 복사 (필요 시 커스터마이징)
#COPY nginx.conf /etc/nginx/nginx.conf

# 로컬 빌드 결과물 복사
COPY build /usr/share/nginx/html

EXPOSE 3000

# 기본 Nginx 실행 명령
CMD ["nginx", "-g", "daemon off;"]
