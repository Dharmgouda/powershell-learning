# ------------------------------------------------------------
# Script Name : ScriptBlocks-And-Functions.ps1
# Author      : Dharmgouda Maradi
# Description :
#   This script demonstrates PowerShell Script Blocks,
#   Functions, Parameterized Functions, and Scope
#   (Local vs Global variables).
#
#   Concepts covered:
#   - Script Blocks
#   - Invoking Script Blocks
#   - Simple Functions
#   - Parameterized Functions
#   - Default & Mandatory Parameters
#   - Variable Scope (Global & Local)
# ------------------------------------------------------------


# ============================
# Script Block Demo
# ============================

# A script block is a block of reusable PowerShell code
$ScriptBlockDemo = {
    Write-Host "This is a script block" -ForegroundColor Yellow
    Get-Service -Name WinRM
}

# Calling the script block using Invoke()
$ScriptBlockDemo.Invoke()


# Calling a script block directly using Invoke-Command
Invoke-Command -ScriptBlock {
    Write-Host "This is a script block executed using Invoke-Command" -ForegroundColor Yellow
    Get-Service -Name WinRM
}

# End of Script Block Demo


# ============================
# Functions
# ============================

# Simple function without parameters
function Show-Text {
    Write-Host "This is a simple function" -ForegroundColor Red
    Get-Service -Name WinRM
}

# Call the function (just use the function name)
Show-Text


# ============================
# Parameterized Function (Inline Parameters)
# ============================

function Show-Text {
    param (
        $Message,
        $ServiceName
    )

    Write-Host $Message -ForegroundColor Red
    Get-Service -Name $ServiceName
}

# Calling function with named parameters
Show-Text -Message "Coming from parameter 1" -ServiceName "BITS"


# ============================
# Parameterized Function (Param Block)
# ============================

function Display-Text {
    param (
        # Default values for parameters
        $Message = "Default Message",
        $ServiceName = "BITS"
    )

    Write-Host $Message -ForegroundColor Green
    Get-Service -Name $ServiceName
}

# Calling function with both parameters
Display-Text -Message "Hi Dharmgouda, you are using param block" -ServiceName "BITS"

# Calling function with only one parameter (default value used for ServiceName)
Display-Text -Message "This is a custom message"


# ============================
# Mandatory Parameters
# ============================

function Display-MandatoryText {
    param (
        # Mandatory parameter forces user input
        [Parameter(Mandatory)]
        $Message,

        $ServiceName = "BITS"
    )

    Write-Host $Message -ForegroundColor Cyan
    Get-Service -Name $ServiceName
}

# When called, PowerShell will prompt for Message
# Display-MandatoryText
# Uncomment above line to test mandatory behavior


# ============================
# Variable Scope Demo
# ============================

# Global scope variable
$a = "123"

function Show-ScopeDemo {

    # Local (child scope) variable
    $a = "456"

    Write-Host "Inside function (Local Scope): $a" -ForegroundColor Yellow
}

# Call function
Show-ScopeDemo

# Access global variable
Write-Host "Outside function (Global Scope): $a" -ForegroundColor Green

