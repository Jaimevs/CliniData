#  Seeder - Documentación

---

## 🔹 Código Fuente

Enlace del Seeder
**Ejemplo:** [Repositorio del Seeder](https://github.com/Jaimevs/seeder)
Seeder dentro de API
**Ejemplo:** [Repositorio del Seeder](https://github.com/Jaimevs/API-PredictHealth/tree/main/seeders)
---

## 🔹 Respaldo de la Base de Datos Vacía (Sin Datos)

Incluye un archivo con la estructura de la base de datos, ya sea relacional o no relacional.
Este respaldo servirá como plantilla para cargar datos simulados.

📎 **Repositorio del respaldo vacío:** [URL DEL REPOSITORIO SEEDER](https://github.com/Jaimevs/EstructuraBase)

---

# 🚀 Seeders API - Generación de Datos Simulados

Este módulo expone endpoints para **generar datos simulados** en la base de datos: usuarios, roles, dispositivos, perfiles de salud, alertas y más.  
Ideal para **pruebas, desarrollo e inicialización** del sistema.

---

##  Endpoints Disponibles

| Método | Endpoint                                   | Descripción                                                                 | Parámetros principales                                                                 |
|--------|--------------------------------------------|-----------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
| **GET**  | `/seeders/`                                | Lista todos los **seeders disponibles** con nombre, descripción y tablas.   | —                                                                                     |
| **POST** | `/seeders/run/{seeder_name}`               | Ejecuta un **seeder individual**.                                           | `seeder_name` (path, str) → nombre del seeder <br> `clear_first` (query, bool, opc.) → limpiar antes |
| **POST** | `/seeders/run-all`                         | Ejecuta **todos los seeders** o una lista específica en orden.              | `clear_first` (query, bool, opc.) <br> `selected_seeders` (query, List[str], opc.)     |
| **POST** | `/seeders/clear-all`                       | **⚠️ Elimina todos los datos** de todas las tablas (operación destructiva). | —                                                                                     |
| **POST** | `/seeders/heart-measurements/{user_id}`    | Genera **mediciones cardíacas** para un usuario específico.                 | `user_id` (path, int) <br> `days` (query, int, default=30, rango 1–365)                |
| **GET**  | `/seeders/status`                          | Obtiene el **estado actual de las tablas**: registros, vacías o con error.  | —                                                                                     |

---

## 🔹 Capturas de Pantalla

A continuación se muestran ejemplos del uso de los endpoints con **Postman** / **Swagger UI**.  
Las imágenes están en la misma carpeta que este README.

| Endpoint | Descripción | Captura |
|----------|-------------|---------|
| `GET /seeders/` | Lista de seeders disponibles | ![Lista de Seeders](./img/Captura%20de%20pantalla%202025-08-20%20024444.png) |
| `POST /seeders/run/{seeder_name}` | Ejecución de un seeder individual (`users`) | ![Seeder Users](./img/Captura%20de%20pantalla%202025-08-20%20024706.png) |
| `POST /seeders/run-all` | Ejecución de todos los seeders | ![Run All Seeders](./img/Captura%20de%20pantalla%202025-08-20%20024242.png) |
| `POST /seeders/clear-all` | Limpieza total de la base de datos | ![Clear All](./img/Captura%20de%20pantalla%202025-08-20%20025130.png) |
| `POST /seeders/heart-measurements/{user_id}` | Generación de mediciones cardíacas para un usuario | ![Heart Measurements](./img/Captura%20de%20pantalla%202025-08-20%20024444.png) |
| `GET /seeders/status` | Estado actual de las tablas en la base de datos | ![Status](./img/Captura%20de%20pantalla%202025-08-20%20024805.png) |

---

## 🔹 Respaldo de la Base de Datos con Datos Simulados (1,000,000 de registros)

Este respaldo contiene una base de datos ya poblada con un millón de registros, útil para alimentar algoritmos de análisis supervisado y no supervisado.

📦 **Formato recomendado:** `.sql`, `.json`, `.bson` (según el tipo de base de datos)
📍 **Ubicación:** [URL del respaldo con datos generados](https://github.com/Jaimevs/BasePoblada)
