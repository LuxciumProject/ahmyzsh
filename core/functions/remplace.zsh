for file in PLACEHOLDER*.*; do
  mv "$file" "${file/PLACEHOLDER/}"
done

for file in PLACEHOLDER*.*; do
  rename s/PLACEHOLDER\.// PLACEHOLDER*.*
done
