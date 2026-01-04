# ------------------------------------------------------------
# PowerShell Basics – Types, Members, Variables, and DateTime
# Author: Dharmgouda Maradi
# Description:
#   This script demonstrates basic PowerShell concepts such as
#   data types, Get-Member usage, variables, constants,
#   output storage, and DateTime handling.
# ------------------------------------------------------------


# -------------------------------
# Working with data types
# -------------------------------

# String object
"this is a test string"

# Get the type of a string
("this is a test string").GetType()

# Get the type of a Boolean value
($true).GetType()


# -------------------------------
# Get-Member (methods & properties)
# -------------------------------
# Get-Member shows available methods and properties of an object

# Get members of an empty string
Get-Member -InputObject ""

# Access string property
("this is a test string").Length

# Get members of an integer
Get-Member -InputObject 2


# -------------------------------
# Alternative way to use Get-Member (Pipeline)
# -------------------------------

"" | Get-Member
$true | Get-Member

# Convert Boolean to String
($true).ToString()


# -------------------------------
# Variables in PowerShell
# -------------------------------
# Two types of variables:
# 1. Automatic (inbuilt) variables → example: $Host
# 2. User-defined variables
# Note: PowerShell keywords cannot be used as variable names

$name = "Dgouda"
$name

# Output text with color
Write-Host "Welcome to PowerShell Tutorial" -ForegroundColor Yellow
Write-Host "Welcome to PowerShell Tutorial - $name" -ForegroundColor Green


# -------------------------------
# Variable case-insensitivity
# -------------------------------

$a = 1
$b = 1

$a + $b
$A + $B   # Same result (variables are case-insensitive)

# Get variable type
$a.GetType()
$a.GetType().BaseType


# -------------------------------
# Dynamic typing in PowerShell
# -------------------------------
# PowerShell automatically assigns types

$a = "abc"
$a = 2
$a.GetType()

$a = "123"


# -------------------------------
# Creating and removing variables
# -------------------------------

# Create a variable explicitly
New-Variable -Name "test" -Value "Hello DGouda"
$test

# Remove variable from memory
Remove-Variable -Name "test"


# -------------------------------
# ReadOnly variable
# -------------------------------

New-Variable -Name "test" -Value "Hello DGouda" -Option ReadOnly

# Force update ReadOnly variable
Set-Variable -Name "test" -Value "New Value" -Force
$test


# -------------------------------
# Constant variable
# -------------------------------
# Constant variables cannot be modified or removed

New-Variable -Name "var2" -Value "Hello DGouda" -Option Constant

# This will throw an error (expected behavior)
Set-Variable -Name "var2" -Value "New String Value" -Force


# -------------------------------
# Storing command output
# -------------------------------

# Store output in a variable
$output = Get-Service
$output

# Store output using common parameter (-OutVariable)
Get-Service -OutVariable gsvo
$gsvo


# -------------------------------
# PowerShell Data Types
# -------------------------------
<#
Common PowerShell Data Types:
- Int
- Long
- String
- Boolean
- Array
- Enum        → Special data structure
- DateTime    → Date and time representation
#>


# -------------------------------
# DateTime example
# -------------------------------

$d = Get-Date
$d
$d.GetType()

# Explore DateTime members
$d | Get-Member

# Access DateTime properties
$d.Day
$d.DayOfWeek
$d.DayOfYear

