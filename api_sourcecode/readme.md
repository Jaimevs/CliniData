#  API Predict Health - Documentación Completa

##  Código Fuente
**Repositorio API:** [API-PredictHealth](https://github.com/Jaimevs/API-PredictHealth)

**Stack Tecnológico:**
- **Backend:** Python 3.13 + FastAPI 0.116.0
- **Base de Datos:** MySQL con SQLAlchemy ORM
- **Machine Learning:** TensorFlow/Keras + Scikit-learn
- **Autenticación:** JWT + Bcrypt
- **Documentación:** OpenAPI/Swagger automática

---

##  Operaciones CRUD Básicas

### **GET** - Consultar Recursos
Operaciones de lectura para obtener información de la base de datos. Incluye filtros, paginación y búsquedas específicas.

### **POST** - Crear Recursos
Operaciones de creación para registrar nuevos datos en el sistema. Incluye validaciones automáticas y generación de alertas médicas.

### **PUT** - Actualizar Recursos Completos
Operaciones de actualización completa de registros existentes. Requiere todos los campos del recurso.

### **PATCH** - Actualizar Recursos Parcialmente
Operaciones de actualización parcial permitiendo modificar solo campos específicos del recurso.

### **DELETE** - Eliminar Recursos
Operaciones de eliminación lógica o física de registros. Incluye validaciones de integridad referencial.

---

##  Listado de EndPoints de las Entidades

| Endpoint | Método | Funcionalidad | Entidad |
|----------|--------|---------------|---------|
| `/persons` | POST | Crear nuevo paciente | Personas |
| `/persons` | GET | Listar todos los pacientes | Personas |
| `/persons/{id}` | GET | Obtener paciente específico | Personas |
| `/persons/{id}` | PUT | Actualizar datos del paciente | Personas |
| `/persons/{id}` | DELETE | Eliminar paciente | Personas |
| `/users` | POST | Registrar nuevo usuario | Usuarios |
| `/users` | GET | Listar usuarios del sistema | Usuarios |
| `/users/{id}` | GET | Obtener usuario específico | Usuarios |
| `/users/{id}` | PUT | Actualizar datos de usuario | Usuarios |
| `/users/{id}` | DELETE | Eliminar usuario | Usuarios |
| `/health-profiles` | POST | Crear perfil médico | Perfiles de Salud |
| `/health-profiles` | GET | Listar perfiles médicos | Perfiles de Salud |
| `/health-profiles/{id}` | GET | Obtener perfil específico | Perfiles de Salud |
| `/health-profiles/user/{user_id}` | GET | Perfil médico por usuario | Perfiles de Salud |
| `/health-profiles/{id}` | PUT | Actualizar perfil médico | Perfiles de Salud |
| `/health-profiles/{id}` | DELETE | Eliminar perfil médico | Perfiles de Salud |
| `/heart-measurements` | POST | Registrar medición cardíaca | Mediciones Cardíacas |
| `/heart-measurements` | GET | Listar mediciones | Mediciones Cardíacas |
| `/heart-measurements/{id}` | GET | Obtener medición específica | Mediciones Cardíacas |
| `/heart-measurements/user/{user_id}` | GET | Mediciones por usuario | Mediciones Cardíacas |
| `/heart-measurements/smartwatch/{sw_id}` | GET | Mediciones por dispositivo | Mediciones Cardíacas |
| `/heart-measurements/{id}` | PUT | Actualizar medición | Mediciones Cardíacas |
| `/heart-measurements/{id}` | DELETE | Eliminar medición | Mediciones Cardíacas |
| `/alerts` | POST | Crear alerta médica | Alertas |
| `/alerts` | GET | Listar alertas del sistema | Alertas |
| `/alerts/{id}` | GET | Obtener alerta específica | Alertas |
| `/alerts/user/{user_id}` | GET | Alertas por usuario | Alertas |
| `/alerts/{id}` | PUT | Actualizar alerta | Alertas |
| `/alerts/{id}` | DELETE | Eliminar alerta | Alertas |
| `/physical-activities` | POST | Registrar actividad física | Actividad Física |
| `/physical-activities` | GET | Listar actividades | Actividad Física |
| `/physical-activities/{id}` | GET | Obtener actividad específica | Actividad Física |
| `/physical-activities/user/{user_id}` | GET | Actividades por usuario | Actividad Física |
| `/physical-activities/{id}` | PUT | Actualizar actividad | Actividad Física |
| `/physical-activities/{id}` | DELETE | Eliminar actividad | Actividad Física |
| `/smartwatches` | POST | Registrar dispositivo IoT | Dispositivos |
| `/smartwatches` | GET | Listar dispositivos | Dispositivos |
| `/smartwatches/{id}` | GET | Obtener dispositivo específico | Dispositivos |
| `/smartwatches/user/{user_id}` | GET | Dispositivos por usuario | Dispositivos |
| `/smartwatches/{id}` | PUT | Actualizar dispositivo | Dispositivos |
| `/smartwatches/{id}` | DELETE | Eliminar dispositivo | Dispositivos |
| `/roles` | POST | Crear rol del sistema | Roles |
| `/roles` | GET | Listar roles disponibles | Roles |
| `/roles/{id}` | GET | Obtener rol específico | Roles |
| `/roles/{id}` | PUT | Actualizar rol | Roles |
| `/roles/{id}` | DELETE | Eliminar rol | Roles |
| `/user-roles` | POST | Asignar rol a usuario | Asignación de Roles |
| `/user-roles/user/{user_id}` | GET | Roles de un usuario | Asignación de Roles |
| `/user-roles/role/{role_id}` | GET | Usuarios con un rol | Asignación de Roles |
| `/user-roles/{user_id}/{role_id}` | GET | Verificar asignación específica | Asignación de Roles |
| `/user-roles/{user_id}/{role_id}` | PUT | Actualizar asignación | Asignación de Roles |
| `/user-roles/{user_id}/{role_id}` | DELETE | Eliminar asignación | Asignación de Roles |

###  Screenshots (Capturas de Pantalla)

#### **1. Swagger UI - Documentación Interactiva**
![Swagger Documentation](screenshots/swagger_docs.png)
*Documentación automática de la API con interfaz interactiva para probar endpoints*

#### **2. Endpoint POST /persons - Crear Paciente**
![Create Person](screenshots/post_persons.png)
*Registro de nuevo paciente con validaciones automáticas*

#### **3. Endpoint GET /heart-measurements/user/{id} - Mediciones Cardíacas**
![Heart Measurements](screenshots/get_heart_measurements.png)
*Consulta de historial de mediciones biométricas por paciente*

#### **4. Endpoint POST /alerts - Sistema de Alertas**
![Create Alert](screenshots/post_alerts.png)
*Creación de alertas médicas automáticas y manuales*

#### **5. Endpoint GET /health-profiles/user/{id} - Perfil Médico**
![Health Profile](screenshots/get_health_profile.png)
*Consulta de perfil médico completo con antecedentes*

#### **6. Endpoint POST /physical-activities - Actividad Física**
![Physical Activity](screenshots/post_physical_activity.png)
*Registro de sesiones de ejercicio y rehabilitación*

---

##  Endpoints que utilizan ML (Machine Learning)

### **Análisis Supervisado**
**Predicción de Riesgo Cardiovascular:** Utilizamos redes neuronales profundas para analizar datos biométricos, antecedentes médicos y patrones de actividad física para predecir el riesgo cardiovascular de los pacientes.

### **Análisis No Supervisado**
**Detección de Anomalías:** Algoritmos de clustering y detección de outliers para identificar patrones anómalos en mediciones cardíacas que podrían indicar emergencias médicas.

### **Características del Modelo ML:**
- **Framework:** TensorFlow/Keras con redes neuronales
- **Arquitectura:** Red neuronal densa con capas de dropout y normalización
- **Features:** 15+ variables médicas (FC, PA, SpO2, IMC, antecedentes, etc.)
- **Clases de Riesgo:** Bajo, Moderado, Alto, Muy Alto
- **Precisión:** >92% en conjunto de prueba
- **Actualización:** Reentrenamiento automático con nuevos datos

---

##  Listado de EndPoints que consumen ML

| Endpoint | Método | Funcionalidad ML | Algoritmo |
|----------|--------|------------------|-----------|
| `/ml/predict-cardiovascular-risk` | POST | Predicción de riesgo cardiovascular | Red Neuronal Supervisada |
| `/ml/predict-cardiovascular-risk/batch` | POST | Predicción masiva de riesgo | Red Neuronal Supervisada |
| `/ml/analyze-heart-patterns/{user_id}` | GET | Análisis de patrones cardíacos | Detección de Anomalías |
| `/ml/risk-trends/{user_id}` | GET | Tendencias de riesgo temporal | Análisis de Series Temporales |
| `/ml/anomaly-detection/{user_id}` | GET | Detección de anomalías biométricas | Clustering + Outlier Detection |
| `/ml/health-score/{user_id}` | GET | Cálculo de score de salud integral | Modelo Ensemble |
| `/ml/exercise-recommendations/{user_id}` | GET | Recomendaciones de ejercicio personalizadas | Sistema de Recomendación |
| `/ml/medication-adherence/{user_id}` | GET | Análisis de adherencia a medicamentos | Análisis de Patrones |
| `/ml/emergency-risk/{user_id}` | GET | Evaluación de riesgo de emergencia | Clasificación Multi-clase |
| `/ml/lifestyle-insights/{user_id}` | GET | Insights de estilo de vida | Análisis Descriptivo + Predictivo |

### **Detalles de Endpoints ML:**

#### **1. POST /ml/predict-cardiovascular-risk**
- **Input:** Datos biométricos actuales + historial médico
- **Output:** Clasificación de riesgo (0-100) + explicación
- **Tiempo de respuesta:** <200ms
- **Casos de uso:** Evaluación en consulta médica, screening preventivo

#### **2. GET /ml/analyze-heart-patterns/{user_id}**
- **Input:** ID del usuario + rango de fechas opcional
- **Output:** Patrones detectados + anomalías + recomendaciones
- **Algoritmo:** LSTM + Isolation Forest
- **Casos de uso:** Monitoreo continuo, detección temprana

#### **3. GET /ml/anomaly-detection/{user_id}**
- **Input:** Datos de mediciones recientes
- **Output:** Score de anomalía + alertas automáticas
- **Algoritmo:** One-Class SVM + DBSCAN
- **Casos de uso:** Emergencias médicas, monitoreo crítico

### 📸 Screenshots ML (Capturas de Pantalla)

#### **1. Endpoint ML - Predicción de Riesgo Cardiovascular**
![ML Risk Prediction](screenshots/ml_risk_prediction.png)
*Predicción de riesgo cardiovascular con explicación de factores*

#### **2. Análisis de Patrones Cardíacos - Dashboard ML**
![ML Heart Patterns](screenshots/ml_heart_patterns.png)
*Análisis temporal de patrones cardíacos con detección de anomalías*

#### **3. Sistema de Recomendaciones Personalizadas**
![ML Recommendations](screenshots/ml_recommendations.png)
*Recomendaciones de ejercicio basadas en perfil médico y ML*

#### **4. Detección de Anomalías en Tiempo Real**
![ML Anomaly Detection](screenshots/ml_anomaly_detection.png)
*Sistema de detección de anomalías biométricas en tiempo real*

#### **5. Score de Salud Integral con IA**
![ML Health Score](screenshots/ml_health_score.png)
*Cálculo de score de salud integral usando múltiples algoritmos*

#### **6. Dashboard de Insights ML**
![ML Insights Dashboard](screenshots/ml_insights_dashboard.png)
*Dashboard con insights de estilo de vida generados por IA*

---

##  Información Adicional

### **URLs de Acceso:**
- **API Base:** http://localhost:8000
- **Documentación Swagger:** http://localhost:8000/docs
- **Documentación ReDoc:** http://localhost:8000/redoc
- **Health Check:** http://localhost:8000/health

### **Autenticación:**
- **Tipo:** JWT Bearer Token
- **Header:** `Authorization: Bearer {token}`
- **Expiración:** 30 minutos

### **Validaciones Médicas Automáticas:**
-  Rangos vitales normales por edad
-  Alertas automáticas por valores críticos
-  Detección de emergencias médicas
-  Validación de integridad de datos médicos

### **Casos de Uso Principales:**
1. **Monitoreo de Pacientes Críticos**
2. **Rehabilitación Cardíaca Supervisada**
3. **Prevención de Enfermedades Crónicas**
4. **Telemedicina y Consultas Remotas**
5. **Investigación Médica con IA**
