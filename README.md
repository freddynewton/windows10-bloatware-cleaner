# Windows 10 Bloatware Removal Script

This repository contains a batch script designed to help remove built-in and bloatware apps from Windows 10. The script offers two modes of operation:

- **Express Mode**: Automatically removes all specified apps.
- **Manual Mode**: Prompts you to decide which apps to remove.

## Features

- **Administrative Privileges Check**: Ensures the script is run with administrative rights.
- **Mode Selection**: Choose between Express Mode for automatic removal or Manual Mode for selective removal.
- **Feedback**: Provides clear messages about each action being performed.

## Usage

1. **Download the Script**:
   - Download the batch script from this repository to your local machine.

2. **Run the Script**:
   - Right-click the batch file and select "Run as administrator" to execute the script with elevated privileges.

3. **Choose Operation Mode**:
   - When prompted, choose one of the following options:
     - **1**: **Express Mode** - The script will automatically remove all specified apps.
     - **2**: **Manual Mode** - The script will prompt you for each app, allowing you to choose whether to remove it or not.

4. **Follow Prompts**:
   - If you select Manual Mode, you will be asked individually for each app whether you want to remove it. Respond with `y` for yes or `n` for no.

5. **Completion**:
   - After the script completes, it will notify you if a system restart is required to fully remove some apps.

## Important Notes

- **Administrative Rights**: Make sure you have administrative privileges when running the script, as it requires elevated permissions to remove built-in apps.
- **App Removal**: Be cautious when removing certain apps, as some may be integral to Windows 10 functionality. Always review the list of apps and consider their impact on system functionality before removal.
- **Backup**: It's recommended to create a backup or restore point before running the script to avoid any unintended consequences.

## License

This project is licensed under the [MIT License](LICENSE).

## Contributing

If you have suggestions or improvements, feel free to open an issue or submit a pull request.

## Contact

For any questions or issues, please contact @freddynewton at [here](https://freddynewton.github.io).

---

Thank you for using the Windows 10 Bloatware Removal Script! Your feedback and contributions are appreciated.
