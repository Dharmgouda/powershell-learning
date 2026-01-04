<#
    File Name  : PowerShell-Pipeline-Basics.ps1
    Purpose    : Demonstrates PowerShell pipeline basics using real examples
    Author     : Your Name
    Description:
        This script explains how PowerShell pipelines work with objects.
        It covers filtering, selecting, grouping, measuring, comparing files,
        and working with CSV data.
#>

# -------------------------------
# SECTION 1: Working with Services
# -------------------------------

# Get all services and store them in a variable
# Storing in a variable avoids running Get-Service multiple times
$a = Get-Service

# Get the last 10 services and select only Status and Name
$a | Select-Object -Last 10 -Property Status, Name

# Count total number of services
$a.Count

# Export all services to a CSV file
$a | Export-Csv .\test.csv -NoTypeInformation


# --------------------------------------
# SECTION 2: Filtering and Formatting Data
# --------------------------------------

# Get first 10 running services
# Where-Object filters objects based on condition
# Format-List is used ONLY for display
$a |
Where-Object { $_.Status -eq 'Running' } |
Select-Object -First 10 |
Format-List


# ----------------------------
# SECTION 3: Grouping & Measuring
# ----------------------------

# Group services by Status (Running, Stopped, etc.)
$a | Group-Object Status

# Measure total number of service objects (pipeline style)
$a | Measure-Object

# Measure using parameter-based style (both give same result)
Measure-Object -InputObject $a


# ----------------------------
# SECTION 4: File Comparisons
# ----------------------------

# Read content of two text files
$b = Get-Content .\test1.txt
$c = Get-Content .\test2.txt

# Compare content of both files
# <=  only in reference file
# =>  only in difference file
# ==  present in both files
Compare-Object -ReferenceObject $b -DifferenceObject $c -IncludeEqual

# Count number of lines in test1.txt
$b | Measure-Object


# ----------------------------
# SECTION 5: Working with CSV Data
# ----------------------------

# Import CSV file as objects
$d = Import-Csv .\demo.csv

# Display first 10 rows in table format
$d |
Select-Object -First 10 |
Format-Table -AutoSize


# Select specific columns from CSV
$d |
Select-Object -First 10 -Property Name, RequiredServices, Dev


# -----------------------------------------
# SECTION 6: Calculated Properties & Export
# -----------------------------------------

# Create a calculated property and export to CSV
# DisplayName is derived from Name column
$d |
Select-Object -First 10 -Property `
    RequiredServices,
    @{ Name = 'DisplayName'; Expression = { $_.Name } } |
Export-Csv .\t2.csv -NoTypeInformation


# ----------------------------
# END OF SCRIPT
# ----------------------------

