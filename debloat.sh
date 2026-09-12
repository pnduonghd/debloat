curl -s https://raw.githubusercontent.com/pnduonghd/debloat/refs/heads/main/packages.txt | while IFS= read -r line || [ -n "$line" ]; do
    echo "Đang xử lý: $line"
done