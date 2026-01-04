
# PowerShell Basics – Types, Members, Variables & DateTime

This repository contains my **PowerShell learning notes and practice scripts**, created while learning **PowerShell fundamentals**.  
It covers core concepts that are essential for **PowerShell scripting, automation, and Azure administration**.

---

## 🧠 Conceptual Understanding (Blueprint Example)

To understand how PowerShell works with objects, I followed a **real-world blueprint analogy**:

### 🚗 Car as a Blueprint (Type)

- **Type** = Blueprint (Car)
- **Properties** = Characteristics of the object  
  - Color  
  - Mileage  
  - Top Speed  
  - Engine (CC)

- **Methods** = Actions the object can perform  
  - Move  
  - Steering  
  - Start / Stop  

### 📦 Instances (Objects)

Examples of car instances created from the same blueprint:
- **Audi**
  - Silver
  - 20 km/l
  - 200 km/h
  - 3.0L engine

- **Maruti**
  - Black
  - 24 km/l
  - 160 km/h
  - 1.5L engine

👉 This is similar to **PowerShell objects**, where:
- A **Type** defines structure
- **Properties** store values
- **Methods** define behavior
- **Instances** are actual objects created at runtime

---

## 📌 Topics Covered

### 1️⃣ PowerShell Data Types
- String
- Integer
- Boolean
- Long
- Array
- Enum
- DateTime

Examples:
```powershell
"this is a test string"
("this is a test string").GetType()
($true).GetType()
