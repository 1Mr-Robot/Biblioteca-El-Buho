# Guia de Contribucion

## Configuracion del Entorno de Desarrollo

### 1. Requisitos

- .NET 8.0 SDK
- SQL Server (LocalDB recomendado para desarrollo)
- Visual Studio 2022 o Visual Studio Code

### 2. Clonar y Configurar

```bash
git clone https://github.com/1Mr-Robot/Biblioteca-El-Buho.git
cd Backend/prueba
```

### 3. Configurar Base de Datos

1. Abrir `appsettings.json` y modificar la cadena de conexion:

```json
"ConnectionStrings": {
  "DefaultConnection": "Server=(localdb)\\mssqllocaldb;Database=BiblioTech;Trusted_Connection=True;MultipleActiveResultSets=true"
}
```

2. Aplicar migraciones:

```bash
dotnet ef database update
```

### 4. Ejecutar en Desarrollo

```bash
dotnet run
```

La aplicacion estara disponible en `https://localhost:5001`.

---

## Estructura del Codigo

### Backend (ASP.NET Core MVC)

```
Backend/prueba/
├── Controllers/          # Logica de controladores
├── Models/               # Entidades y ViewModels
├── Data/                 # DbContext y migraciones EF Core
└── Program.cs           # Inyeccion de dependencias
```

### Frontend

```
├── Pantallas/           # Vistas HTML Razor (.cshtml)
├── Styles/              # Estilos CSS modulares
├── Scripts/             # JavaScript para interactividad
└── Imagenes/            # Recursos estaticos
```

---

## Convenciones de Codigo

### C# Backend

- Usar `PascalCase` para nombres de clases, metodos y propiedades publicas
- Usar `camelCase` para variables locales y parametros
- Incluir `async/await` para operaciones asincronas
- Utilizar `var` cuando el tipo sea obvio

### Frontend

- Nombres de archivos en kebab-case: `nombre-archivo.css`
- Clases CSS con prefijo descriptivo: `.btn-`, `.card-`, `.form-`
- JavaScript modular por funcionalidad

---

## Reglas para Contribuir

1. **Fork** el repositorio y crea una rama desde `main`
2. Usa nombres descriptivos para ramas: `feature/nueva-funcion`, `fix/correccion-error`
3. Haz commits atomicos y con mensajes claros
4. Prueba tus cambios antes de hacer pull request
5. Actualiza la documentacion si es necesario

### Mensajes de Commit

```
feat: agregar nueva funcionalidad
fix: corregir error
docs: actualizar documentacion
style: cambios de formato (CSS)
refactor: reestructurar codigo
test: agregar pruebas
```

---

## Areas de Mejora Posibles

- Agregar pruebas unitarias con xUnit o NUnit
- Implementar paginacion en listas grandes
- Mejorar validacion de formularios
- Agregar cache para optimizar rendimiento
- Implementar API REST para consumo externo

---

## Problemas Comunes

### Error de conexion a base de datos

Verificar que SQL Server LocalDB este instalado y ejecutandose:

```bash
sqllocaldb info
```

### Error de migraciones

Si hay conflictos, eliminar la carpeta `Migrations` y regenerar:

```bash
dotnet ef migrations add InitialCreate
dotnet ef database update
```

---

## Recursos Adicionales

- [Documentacion ASP.NET Core](https://docs.microsoft.com/aspnet/core)
- [Entity Framework Core](https://docs.microsoft.com/ef/core)
- [Bootstrap 5](https://getbootstrap.com/docs/5.0/) (framework CSS utilizado)