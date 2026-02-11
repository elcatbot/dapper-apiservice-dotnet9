# Dapper API Service (.NET 9)

A sample REST service built with **.NET 9 minimal API endpoints** to perform **Read/Write operations** using [Dapper](https://github.com/DapperLib/Dapper), a lightweight object mapper for .NET.

---

## 🚀 Features
- Minimal API endpoints in .NET 9
- Integration with Dapper for efficient data access
- Simple CRUD operations (Create, Read, Update, Delete)
- Lightweight and easy to extend

---

## 📂 Project Structure

dapper-apiservice-dotnet9/
│── DapperApiService.sln # Solution file
│── README.md            # Project documentation
│── .gitignore           # Git ignore rules
│── src/                # Source code
    ├── DapperApiService/
        │   ├── Program.cs
        │   ├── appsettings.json
        │   ├── appsettings.Development.json
        │   ├── Models/
        │   │   └── Item.cs
        │   ├── Data/
        │   │   └── DapperContext.cs
        │   ├── Repositories/
        │   │   └── ItemRepository.cs
        │   └── Properties/
        │       └── launchSettings.json
        └── DapperApiService.csproj

---

## ⚙️ Prerequisites
- [.NET 9 SDK](https://dotnet.microsoft.com/download/dotnet/9.0)
- SQL Server or any supported relational database
- Basic knowledge of REST APIs and Dapper

---

## 🛠️ Installation & Setup
1. **Clone the repository**

```bash
    git clone https://github.com/elcatbot/dapper-apiservice-dotnet9.git
    cd dapper-apiservice-dotnet9/src
```

2. **Restore dependencies**

```bash
    dotnet restore
```

3. **Update database connection string**

```bash
    Modify appsettings.json (or equivalent configuration) with your database details.
```

4. **Run the application**

```bash
    dotnet run
```

## 📡 API Endpoints

GET	/items          Retrieve all items
GET	/items/{id}	    Retrieve item by ID
POST /items	        Create new item
PUT	/items/{id}	    Update item
DELETE /items/{id}	Delete item

## 🧪 Example Usage

```bash
curl -X GET http://localhost:5000/items
```

```bash
curl -X POST http://localhost:5000/items \ -H "Content-Type: application/json" \ -d '{"name":"Sample Item","price":100}'
```