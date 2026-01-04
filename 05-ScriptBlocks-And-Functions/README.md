# PowerShell Script Blocks & Functions

This folder contains my learning and hands-on practice with **PowerShell Script Blocks and Functions**.
The goal of this script is to understand how reusable code works in PowerShell and how parameters
and variable scopes behave.

---

## 📌 Concepts Learned

### 1️⃣ Script Blocks
- A script block is a reusable block of PowerShell code
- Stored inside `{ }`
- Can be executed using:
  - `.Invoke()`
  - `Invoke-Command`

Example:
```powershell
$sb = { Get-Service -Name WinRM }
$sb.Invoke()

