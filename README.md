# Downloads Folder Organizer

This Python script is a simple tool to organize your downloads folder by moving files into subfolders based on their file extensions. It helps you keep your downloads folder neat and tidy.

## Getting Started

Before you use the script, make sure you have Python installed on your system. You can download Python from the official website (https://www.python.org/downloads/).

### Prerequisites

This script requires the `os` and `shutil` modules, which are part of the Python standard library. You don't need to install any additional packages.

## Usage

1. Copy the script to a location on your computer.

2. Open the script in a text editor and locate the `downloads_dir` variable. Replace `"{path to downloads folder}"` with the actual path to your downloads folder. Make sure to use a raw string (`r"..."`) if the path contains backslashes, e.g., `r"C:\Users\YourUsername\Downloads"`.

3. Save the script.

4. Run the script

## How It Works

The script does the following:

- It retrieves the list of files in the specified downloads folder.
- For each file, it extracts its file extension.
- If a subfolder with the same extension exists, the script moves the file there.
- If not, it creates a new subfolder with the extension and moves the file into it.

## Author

- Adam Podolak

Feel free to reach out if you have any questions or encounter issues with the script. Enjoy your organized downloads folder!
