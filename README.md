# python-downloads-organizer
# Downloads Folder Organizer

This Python script, `downloads_organizer.py`, is a simple tool to organize your downloads folder by moving files into subfolders based on their file extensions. It helps you keep your downloads folder neat and tidy.

## Getting Started

Before you use the script, make sure you have Python installed on your system. You can download Python from the official website (https://www.python.org/downloads/).

### Prerequisites

This script requires the `os` and `shutil` modules, which are part of the Python standard library. You don't need to install any additional packages.

## Usage

1. Copy the `downloads_organizer.py` script to a location on your computer.

2. Open the script in a text editor and locate the `downloads_dir` variable. Replace `"{path to downloads folder}"` with the actual path to your downloads folder. Make sure to use a raw string (`r"..."`) if the path contains backslashes, e.g., `r"C:\Users\YourUsername\Downloads"`.

3. Save the script.

4. Run the script using your Python interpreter. You can execute it from the command line or by double-clicking the script file. The script will wait for 1 second before starting to allow you to prepare your Downloads folder.

5. The script will then organize the files in your Downloads folder into subfolders based on their file extensions.

## How It Works

The script does the following:

- It retrieves the list of files in the specified downloads folder.
- For each file, it extracts its file extension.
- If a subfolder with the same extension exists, the script moves the file there.
- If not, it creates a new subfolder with the extension and moves the file into it.

## Example

Suppose you have a downloads folder containing files like `document.pdf`, `image.jpg`, and `video.mp4`. After running the script, your downloads folder will be organized as follows:

```
- Downloads
  - pdf
    - document.pdf
  - jpg
    - image.jpg
  - mp4
    - video.mp4
```

## Customization

You can modify the script to suit your needs. For example, you can change the sleep time at the beginning of the script or specify a different folder to organize. You can also adjust the folder structure if you prefer a different organization scheme.

## License

This script is provided under the MIT License. You are free to use, modify, and distribute it as needed. For details, please see the [LICENSE](LICENSE) file.

## Author

- [Your Name]

Feel free to reach out if you have any questions or encounter issues with the script. Enjoy your organized downloads folder!
