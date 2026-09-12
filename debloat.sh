curl -s https://raw.githubusercontent.com/pnduonghd/debloat/refs/heads/main/packages.txt | while IFS= read -r line || [ -n "$line" ]; do
    line=$(echo "$line" | xargs)
    [ -z "$line" ] || [[ "$line" =~ ^# ]] && continue
    echo "Đang xử lý: $line"
    service call package 136 s16 "$line" i32 0 i32 0
done