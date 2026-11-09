#!/bin/bash
# Kịch bản khởi chạy Course-Service phiên bản Mock

# Khởi chạy container Nginx ở chế độ ngầm, đặt tên và ánh xạ cổng 8081 ra ngoài host
docker run -d --name rikkei-course-service -p 8081:80 nginxdemos/hello

echo "Đang kiểm tra danh sách container..."
docker ps

echo "Đang kiểm tra kết nối từ curl..."
curl -I http://localhost:8081