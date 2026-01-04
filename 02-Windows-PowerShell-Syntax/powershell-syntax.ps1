# =================================================
# Windows PowerShell Syntax
# Author: Dharmgouda Maradi
# Description:
# Demonstrates PowerShell syntax concepts learned
# in the second video of the beginner series.
# =================================================

# Verb–Noun cmdlet examples
Get-Service
Get-Process

# Command discovery using Verb
Get-Command -Verb Copy

# Command discovery using Noun
Get-Command -Noun Service

# Command discovery using wildcards
Get-Command -Name "*copy*"
Get-Command -Name "*Net*"

# Understanding command types
Get-Command -Name "*copy*" | Select-Object Name, CommandType

# Aliases in PowerShell
Get-Command -CommandType Alias
Get-Alias

# Find alias for a cmdlet
Get-Alias -Definition Clear-Host

# View syntax of a cmdlet
Get-Command -Name Get-Alias -Syntax

