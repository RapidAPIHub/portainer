# 🚀 Portainer Management Scripts

Dự án này cung cấp tập hợp các script shell để quản lý Portainer (Docker UI) một cách dễ dàng. Thay vì phải gõ nhiều lệnh Docker, bạn chỉ cần chạy script tương ứng.

## 📦 Yêu cầu
- Đã cài Docker trên server
- Quyền sudo (nếu Docker yêu cầu)
- Linux / macOS (hoặc WSL trên Windows)

## 📂 Cấu trúc thư mục
```
├── docker-compose.yml        # File cấu hình Docker Compose
├── setup.sh                  # Script thiết lập Portainer
├── start.sh                  # Chạy Portainer
├── stop.sh                   # Dừng Portainer
├── restart.sh                # Khởi động lại Portainer
├── logs.sh                   # Xem logs của Portainer
├── status.sh                 # Kiểm tra trạng thái Portainer
├── remove.sh                 # Xóa container Portainer
├── update.sh                 # Cập nhật image Portainer
└── readme.md                 # Tài liệu hướng dẫn
```

## ⚙️ Cách dùng
1. Cấp quyền chạy cho các script:
   ```bash
   chmod +x *.sh
   ```

2. Chạy các script tương ứng:
   ```bash
   ./setup.sh         # File thiết lập Portainer
   ./start.sh         # Chạy Portainer
   ./stop.sh          # Dừng Portainer
   ./restart.sh       # Khởi động lại Portainer
   ./logs.sh          # Xem logs
   ./status.sh        # Kiểm tra trạng thái
   ./remove.sh        # Xóa container
   ./update.sh        # Cập nhật image
   ```

## 📖 Tham khảo
- [Portainer Documentation](https://docs.portainer.io/)
- [Docker Documentation](https://docs.docker.com/)
