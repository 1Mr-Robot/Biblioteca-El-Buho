# Biblioteca "El Búho"

## Informacion del Proyecto

| Matricula | Nombre | Carrera |
|-----------|--------|---------|
| 2177709 | Uziel Omar Flores Torres | ITS |
| 2074155 | Isaid Harim Aguiar Cavazos | ITS |
| 2053226 | Diego Alan Velazquez Villanueva | ITS |

**Profesor:** Ing. Luis Daniel Lepe Rodriguez

**Grupos:** 013 y 248 (Equipo 8)

---

## Descripcion del Proyecto

BiblioTech es una aplicacion web de biblioteca ficticia cuyo objetivo es facilitar a los lectores el hallazgo de sus libros y autores favoritos, asi como optimizar el proceso de prestamo de libros.

---

## Proposito

El sistema permite a los usuarios:
- Explorar el catalogo de libros por generos y autores
- Buscar libros por titulo, autor o genero
- Solicitar prestamos de libros
- Gestionar su coleccion personal
- Visualizar estadisticas de la biblioteca
- Administrar elementos del sistema (solo administradores)

---

## Arquitectura

El proyecto sigue el patron **Modelo-Vista-Controlador (MVC)** utilizando ASP.NET Core:

```
Backend/prueba/
├── Controllers/          # Controladores MVC
├── Models/               # Modelos de datos
├── Data/                 # Contexto de base de datos y migraciones
├── Views/                # Vistas Razor
└── Program.cs           # Configuracion de la aplicacion
```

### Estructura Frontend

```
├── Pantallas/           # Paginas HTML
├── Styles/              # Archivos CSS
├── Scripts/             # Archivos JavaScript
└── Imagenes/            # Recursos graficos
```

---

## Herramientas y Tecnologias

| Categoria | Tecnologia | Version |
|-----------|------------|---------|
| Framework | ASP.NET Core MVC | 8.0 |
| Lenguaje | C# | .NET 8.0 |
| Base de datos | SQL Server | - |
| ORM | Entity Framework Core | 8.0.10 |
| Autenticacion | ASP.NET Core Identity | 8.0.10 |
| Frontend | HTML5, CSS3, JavaScript | - |
| IDE | Visual Studio / VS Code | - |

---

## Requisitos Previos

- [.NET 8.0 SDK](https://dotnet.microsoft.com/download/dotnet/8.0)
- [SQL Server](https://www.microsoft.com/sql-server/sql-server-downloads) (LocalDB o Express)
- [Visual Studio 2022](https://visualstudio.microsoft.com/) o VS Code

---

## Instalacion y Ejecucion

1. Clonar el repositorio
2. Configurar la cadena de conexion en `appsettings.json`
3. Ejecutar las migraciones de base de datos:
   ```bash
   cd Backend/prueba
   dotnet ef database update
   ```
4. Ejecutar la aplicacion:
   ```bash
   dotnet run
   ```
5. Abrir en el navegador: `https://localhost:5001` o `http://localhost:5000`

---

## Rutas Principales

- `/` - Pagina de inicio
- `/Catalogo` - Ver catalogo de libros
- `/Explorar` - Explorar por generos y autores
- `/Administrar` - Panel de administracion
