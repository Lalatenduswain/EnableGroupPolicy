# PowerShell script to ask user whether to enable Group Policy feature

# Prompt the user
$choice = Read-Host "Do you want to enable Group Policy Client Tools and Client Extensions? (y/n)"

if ($choice -eq 'y' -or $choice -eq 'Y') {
    Write-Host "Enabling Group Policy Client Tools and Client Extensions..."

    # Define the file paths
    $packages = @(
        "C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package*.mum",
        "C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package*.mum"
    )

    # Run the command for each package
    Get-ChildItem -Path $packages | ForEach-Object {
        dism.exe /online /norestart /add-package:"$_"
    }

    Write-Host "Group Policy features have been enabled."
} else {
    Write-Host "Group Policy features will not be enabled."
}
