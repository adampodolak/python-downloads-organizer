# Downloads Folder Organizer

This is a tool to organize your downloads folder by moving files into subfolders based on their file extensions. It helps you keep your downloads folder neat and tidy. Additionally, you can use a batch script and a VBScript file to monitor the downloads folder and automatically trigger the Python script when changes are detected.

## Getting Started

Before you use the script and associated files, make sure you have Python installed on your system. You can download Python from the official website (https://www.python.org/downloads/).

### Prerequisites

This script requires the `os` and `shutil` modules, which are part of the Python standard library. You don't need to install any additional packages.

## Usage

1. Copy the `main.py` script, the `folder-monitor.bat` batch file, and the `runhidden.vbs` VBScript file to a location on your computer.

2. Replace `"{path to downloads folder}"` with the actual path to your downloads folder. Make sure to use a raw string (`r"..."`) if the path contains backslashes, e.g., `r"C:\Users\YourUsername\Downloads"`.

3. Save the script.

4. Open the batch file in a text editor and update the following variables:
   - `folder_to_monitor`: Set this variable to the path of your downloads folder.
   - `initial_size`: Set this variable to the initial size of the downloads folder.

5. Save the batch file.

6. Open the VBScript file in a text editor and replace `"{path to batch file}"` with the full path to the `monitor_downloads.bat` file, e.g., `C:\YourFolder\monitor_downloads.bat`.

7. Save the VBScript file.

8. You can use Windows Task Scheduler to set up the VBScript to run automatically when you log on to your machines. It will start monitoring your downloads folder for changes. When a change is detected, it will automatically execute the `main.py` script to organize the files.

## How It Works

### VBScript File (`run_monitor.vbs`)

The VBScript file is responsible for running the batch script in the background. It does so without displaying a command prompt window (`WshShell.Run "{path to batch file}", 0, False`).

### Batch File (`monitor_downloads.bat`)

The batch file continuously monitors the specified folder for changes in size. When a change is detected (indicating that a new file has been downloaded), it triggers the Python script to organize the downloads folder. The batch file checks for changes every few seconds.

### Python Script (`downloads_organizer.py`)

The Python script organizes the files in your downloads folder into subfolders based on their file extensions. It creates subfolders for each unique file extension and moves the corresponding files into their respective subfolders.

## Author

- Adam Podolak
