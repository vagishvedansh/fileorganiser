# 🗂️ File Organizer

A simple yet powerful bash script that automatically organizes files in a directory by categorizing them into folders based on their file extensions.

## ✨ Features

- **Automatic categorization** - Files are sorted into predefined category folders
- **Case-insensitive** - Works with both `.JPG` and `.jpg` extensions
- **Non-destructive** - Only moves files, never deletes anything
- **Self-aware** - Skips itself and existing directories

## 📁 Categories

| Folder | Extensions |
|--------|------------|
| 📷 Images | jpg, jpeg, png, gif, svg, webp |
| 📄 Documents | pdf, doc, docx, txt, md |
| 📦 Archives | zip, tar, gz, 7z, rar |
| 🎬 Video | mp4, mkv, avi, mov |
| 🎵 Audio | mp3, wav, flac, aac |
| 💻 Code | py, js, html, css, c, cpp, java, sh |
| 📂 Others | Everything else |

## 🚀 Usage

1. **Copy the script** to the directory you want to organize:
   ```bash
   cp organize.sh /path/to/messy/folder/
   ```

2. **Navigate** to that directory:
   ```bash
   cd /path/to/messy/folder/
   ```

3. **Run the script**:
   ```bash
   chmod +x organize.sh
   ./organize.sh
   ```

## 📋 Example

**Before:**
```
Downloads/
├── photo.jpg
├── document.pdf
├── song.mp3
├── script.py
└── archive.zip
```

**After:**
```
Downloads/
├── Images/
│   └── photo.jpg
├── Documents/
│   └── document.pdf
├── Audio/
│   └── song.mp3
├── Code/
│   └── script.py
└── Archives/
    └── archive.zip
```

## ⚙️ Customization

Edit the `CATEGORIES` array in `organize.sh` to add or modify categories:

```bash
declare -A CATEGORIES=(
    ["Images"]="jpg jpeg png gif svg webp"
    ["Documents"]="pdf doc docx txt md"
    # Add your own categories here
    ["CustomFolder"]="ext1 ext2 ext3"
)
```

## 📜 License

MIT License - Feel free to use and modify!

---

Made with ❤️ for cleaner directories
