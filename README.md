# Enable Group Policy Tools and Extensions in Windows

This repository contains a PowerShell script that allows you to enable the **Group Policy Client Tools** and **Group Policy Client Extensions** in Windows. These components are essential for managing Group Policy settings on client machines and allow administrators to configure various policies.

## Script Description

The PowerShell script prompts the user to decide whether they would like to enable these components. It checks for the required `.mum` package files in the Windows servicing directory and uses the `dism.exe` command to install them.

### Features:
- Prompts the user to confirm enabling the Group Policy components.
- Uses `dism.exe` to add the necessary packages.
- Simple, interactive, and user-friendly.

## Prerequisites

Before running this script, please ensure the following:

1. **Windows Version**: This script works on Windows 10 and Windows 11. Make sure you are using an appropriate version of Windows that supports Group Policy.
   
2. **Admin Rights**: You must run this script with elevated privileges (as Administrator). If you try running it without administrative permissions, the installation will fail.

3. **DISM Tool**: The `dism.exe` (Deployment Imaging Service and Management Tool) must be available on your system. It comes pre-installed in Windows, so you don't need to install anything separately unless you have removed it manually.

4. **Scripting Execution Policy**: If your system has restricted script execution, you may need to adjust the PowerShell Execution Policy:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope Process -Force
   ```

## Script Usage

To use this script:

1. **Clone the Repository**:
   Clone the repository to your local machine by running the following command:

   ```bash
   git clone https://github.com/Lalatenduswain/EnableGroupPolicy
   ```

2. **Run the Script**:
   Once cloned, open PowerShell as Administrator and navigate to the script directory. Run the script using the following command:

   ```powershell
   .\EnableGroupPolicy.ps1
   ```

3. **Follow the Prompt**:
   The script will prompt you to confirm whether you want to enable the Group Policy Client Tools and Extensions. If you choose 'yes', the necessary components will be installed using `dism.exe`.

4. **Verify**:
   After running the script, you can verify the successful installation of the Group Policy components by checking the availability of Group Policy management tools in the system.

## Cloning Another Script from Lalatendu's Repository

If you want to clone another script from Lalatendu's repositories, you can clone it from the following URL:

```bash
git clone https://github.com/Lalatenduswain/+ScriptName
```

Where `+ScriptName` is the script provided by Lalatendu in previous interactions. Be sure to check it for any necessary configurations or instructions.

## Disclaimer | Running the Script

**Author**: Lalatendu Swain | [GitHub](https://github.com/Lalatenduswain) | [Website](https://blog.lalatendu.info/)

This script is provided as-is and may require modifications or updates based on your specific environment and requirements. Use it at your own risk. The authors of the script are not liable for any damages or issues caused by its usage.

## Donations

If you find this script useful and want to show your appreciation, you can donate via [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain).

Thank you for your support!
