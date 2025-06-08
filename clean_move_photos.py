# import os
# import re

# folder = "downloaded_photos"

# # Step 1: Delete all files containing 'thumb' in the name
# for filename in os.listdir(folder):
#     if "thumb" in filename.lower():
#         os.remove(os.path.join(folder, filename))

# # Step 2: Get remaining .jpg/.png files
# images = sorted(
#     [f for f in os.listdir(folder) if re.search(r'\.(jpg|png)$', f, re.IGNORECASE)]
# )

# # Step 3: Rename to photo1.jpg, photo2.jpg, ...
# base_names = []
# for i, filename in enumerate(images, start=1):
#     ext = filename.split(".")[-1].lower()
#     new_name = f"photo{i}.{ext}"
#     os.rename(os.path.join(folder, filename), os.path.join(folder, new_name))
#     base_names.append(f'"images/photo{i}"')  # Without extension in final output

# # Step 4: Output result
# print(", ".join(base_names))

import os
print(", ".join(f"'images/{f}'" for f in sorted(os.listdir("downloaded_photos")) if f.lower().endswith(('.jpg', '.png'))))
