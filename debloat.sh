curl -s https://raw.githubusercontent.com/pnduonghd/debloat/refs/heads/main/packages.txt | while IFS= read -r line || [ -n "$line" ]; do
    # Loại bỏ khoảng trắng thừa đầu/cuối dòng
    line=$(echo "$line" | xargs)
    
    # Bỏ qua dòng trống hoặc dòng bắt đầu bằng dấu #
    case "$line" in
        ""|\#*) continue ;;
    esac

    echo "Đang xử lý: $line"
    service call package 136 s16 "$line" i32 0 i32 0
done