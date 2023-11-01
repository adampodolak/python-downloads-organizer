import os
import shutil

downloads_dir = r"{path to downloads folder}"

files = os.listdir(downloads_dir)

for file in files:
    file_ext = os.path.splitext(file)[1]
    
    curr_path = os.path.join(downloads_dir,file)

    if os.path.isdir(curr_path):
        continue

    if os.path.exists(os.path.join(downloads_dir,file_ext)) == True:
        folder = os.path.join(downloads_dir,file_ext)
        destination_path = os.path.join(folder,file)
        shutil.move(curr_path,destination_path)
    else:
        new_folder = os.path.join(downloads_dir,file_ext)
        os.makedirs(new_folder)
        destination_path = os.path.join(new_folder,file)
        shutil.move(curr_path,destination_path)