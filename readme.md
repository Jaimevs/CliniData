# PREDICT-HEALTH 
<hr>

### Introducción

PredictHealth representa una revolución en el ámbito de la medicina preventiva y la salud digital, desarrollado como parte del proyecto CLINI-DATA de la Universidad Tecnológica de Xicotepec de Juárez. Este sistema inteligente surge de la necesidad crítica de abordar el creciente problema de las Enfermedades Crónicas No Transmisibles (ECNT) que representan la principal causa de mortalidad a nivel mundial, siendo responsables de más del 70% de las muertes anuales según la Organización Mundial de la Salud.

En México, las enfermedades cardiovasculares, diabetes e hipertensión han alcanzado proporciones epidémicas, afectando a millones de personas y generando costos astronómicos para el sistema de salud. La detección tardía de estas condiciones resulta en tratamientos más complejos, costos elevados y, más importante aún, en pérdidas humanas que podrían prevenirse.

PredictHealth integra tecnologías emergentes como inteligencia artificial, machine learning, dispositivos wearables y computación en la nube para crear un ecosistema de salud predictiva que opera en tiempo real. El sistema utiliza algoritmos de aprendizaje supervisado y no supervisado para analizar patrones en datos biomédicos, identificando señales tempranas de riesgo cardiovascular y generando alertas preventivas personalizadas.

La plataforma está diseñada bajo una arquitectura de microservicios que garantiza escalabilidad, mantenibilidad y la capacidad de integración con sistemas de salud existentes. Al combinar el poder del análisis predictivo con la accesibilidad de los dispositivos wearables comerciales, PredictHealth democratiza el acceso a tecnologías de monitoreo médico avanzado, permitiendo que cualquier persona pueda beneficiarse de un sistema de alerta temprana sofisticado desde la comodidad de su hogar.

<br>

### Identidad Gráfica

| Logo del Producto | Logo de la Marca|
|---|---|
| Logo Aquí | Logo Aquí|

<br>

### Descripción

PredictHealth es un sistema inteligente de predicción temprana de enfermedades crónicas que combina la potencia del machine learning con la accesibilidad de dispositivos wearables para revolucionar la medicina preventiva. El sistema opera como una plataforma integral que recolecta, procesa y analiza datos biomédicos en tiempo real, transformando información fisiológica básica en insights médicos accionables.

La arquitectura del sistema se fundamenta en tres modelos de inteligencia artificial complementarios: un modelo de clasificación multiclase que evalúa niveles de riesgo cardiovascular con una precisión del 98.71%, un modelo de detección de anomalías que identifica patrones atípicos en signos vitales, y un modelo de clustering no supervisado que descubre fenotipos naturales de respuesta al estrés en poblaciones.

El ecosistema PredictHealth incluye una aplicación móvil nativa desarrollada en Kotlin para Android, que sirve como interfaz principal para usuarios, permitiendo el monitoreo continuo de signos vitales, visualización de tendencias de salud y recepción de alertas personalizadas. La aplicación se conecta seamlessly con dispositivos wearables comerciales, recolectando datos de frecuencia cardíaca, presión arterial, saturación de oxígeno, temperatura corporal, niveles de estrés y variabilidad del ritmo cardíaco.

El backend del sistema, construido con FastAPI y Python, procesa estos datos utilizando modelos de machine learning entrenados específicamente para detectar patrones asociados con enfermedades cardiovasculares, diabetes e hipertensión. Los algoritmos analizan no solo valores individuales, sino patrones temporales, correlaciones entre variables y desviaciones de líneas base personalizadas para cada usuario.

La plataforma web administrativa, desarrollada con React y TailwindCSS, proporciona a profesionales de la salud una vista integral de sus pacientes, incluyendo dashboards de monitoreo en tiempo real, historial médico digital, análisis de tendencias poblacionales y herramientas de toma de decisiones asistidas por IA.

### Planteamiento del Problema

Las Enfermedades Crónicas No Transmisibles representan una crisis de salud pública global sin precedentes. En México, las estadísticas son alarmantes: más de 12 millones de personas viven con diabetes, mientras que la hipertensión afecta a aproximadamente 30 millones de mexicanos, muchos de los cuales desconocen su condición. Las enfermedades cardiovasculares causan más de 140,000 muertes anuales en el país, convirtiéndose en la principal causa de mortalidad.

El problema fundamental radica en la naturaleza silenciosa de estas enfermedades. La hipertensión, conocida como "el asesino silencioso", puede desarrollarse durante años sin síntomas evidentes, mientras que la diabetes tipo 2 puede permanecer no diagnosticada hasta que aparecen complicaciones graves como neuropatía, retinopatía o enfermedad renal. Cuando finalmente se detectan estas condiciones, el daño acumulativo ya es significativo y irreversible.

Los sistemas de salud actuales operan bajo un modelo reactivo, donde los pacientes buscan atención médica solo cuando experimentan síntomas evidentes. Este enfoque resulta en diagnósticos tardíos, tratamientos más complejos y costosos, y peores pronósticos para los pacientes. Además, la saturación de servicios médicos dificulta el acceso oportuno a evaluaciones preventivas, especialmente en áreas rurales y comunidades marginadas.

La falta de herramientas de monitoreo continuo accesibles agrava el problema. Los chequeos médicos anuales proporcionan solo una instantánea de la salud del paciente, perdiendo información valiosa sobre variaciones diurnas, respuestas al estrés, y tendencias graduales que podrían indicar el desarrollo de condiciones crónicas. Esta limitación es particularmente crítica para enfermedades cuya progresión se caracteriza por cambios sutiles pero constantes en parámetros fisiológicos.

### Propuesta de Solución

PredictHealth propone una transformación paradigmática del modelo de atención médica, evolucionando de un enfoque reactivo hacia un sistema proactivo y predictivo. La solución integra múltiples componentes tecnológicos para crear un ecosistema de salud integral que opera 24/7.

**Arquitectura Técnica:**
El sistema implementa una arquitectura de microservicios distribuida que incluye: un motor de inteligencia artificial desarrollado con TensorFlow y scikit-learn que procesa datos biomédicos utilizando algoritmos de Random Forest, K-Means clustering e Isolation Forest; una API RESTful construida con FastAPI que maneja la comunicación entre componentes; una base de datos PostgreSQL optimizada para almacenamiento de series temporales médicas; y servicios de computación en la nube desplegados en AWS para garantizar escalabilidad y disponibilidad.

**Funcionalidades del Usuario:**
Los pacientes interactúan con el sistema a través de una aplicación móvil intuitiva que sincroniza automáticamente con dispositivos wearables, proporcionando monitoreo continuo sin intervención manual. La aplicación genera alertas inteligentes clasificadas por prioridad (baja, media, alta, crítica) basadas en el análisis de múltiples variables fisiológicas. Los usuarios reciben recomendaciones personalizadas para ejercicio, dieta y manejo del estrés, adaptadas a sus perfiles de riesgo específicos.

**Herramientas para Profesionales:**
Los médicos acceden a dashboards web que consolidan información de múltiples pacientes, permitiendo monitoreo poblacional y identificación de tendencias epidemiológicas. El sistema genera reportes automáticos que destacan pacientes en riesgo, facilitando la priorización de consultas y optimizando la asignación de recursos médicos.

**Mecanismos de Seguridad:**
La plataforma implementa cifrado end-to-end para proteger datos médicos sensibles, autenticación multi-factor para usuarios y profesionales, auditoría completa de accesos, y cumplimiento con estándares internacionales como HIPAA y GDPR. Los datos se almacenan en servidores con certificación médica y se implementan protocolos de backup y recuperación ante desastres.

**Integración y Escalabilidad:**
El sistema está diseñado para integrarse con sistemas hospitalarios existentes a través de APIs estandarizadas HL7 FHIR, permitiendo la importación de historiales médicos y la exportación de alertas. La arquitectura de microservicios facilita la escalabilidad horizontal, permitiendo el crecimiento desde usuarios individuales hasta poblaciones enteras.

<br>

### Objetivo General

Desarrollar e implementar un sistema inteligente de predicción temprana de enfermedades crónicas que utilice tecnologías de inteligencia artificial y dispositivos wearables para detectar, analizar y alertar sobre riesgos cardiovasculares en tiempo real, transformando el paradigma de atención médica de reactivo a preventivo. El sistema debe ser capaz de procesar datos biomédicos continuos, generar predicciones precisas con algoritmos de machine learning, y proporcionar herramientas intuitivas tanto para pacientes como para profesionales de la salud, con el objetivo de reducir la incidencia y mortalidad de enfermedades crónicas no transmisibles a través de intervenciones tempranas y personalizadas.

<br>

### Objetivos Específicos

• **Desarrollar modelos de machine learning de alta precisión** que clasifiquen automáticamente los niveles de riesgo cardiovascular de pacientes utilizando algoritmos de Random Forest, logrando una precisión mínima del 95% en la identificación de casos críticos y normales.

• **Implementar un sistema de detección de anomalías en tiempo real** que identifique patrones atípicos en signos vitales mediante técnicas de clustering no supervisado, generando alertas automáticas cuando se detecten desviaciones significativas de los patrones basales del usuario.

• **Crear una aplicación móvil nativa multiplataforma** que sincronice seamlessly con dispositivos wearables comerciales, permitiendo el monitoreo continuo de al menos 7 variables fisiológicas (frecuencia cardíaca, presión arterial, saturación de oxígeno, temperatura, nivel de estrés, variabilidad del ritmo) con interfaz intuitiva y notificaciones push inteligentes.

• **Desarrollar un dashboard web administrativo** para profesionales de la salud que proporcione visualizaciones en tiempo real de datos poblacionales, análisis de tendencias epidemiológicas, gestión de alertas por prioridad, y herramientas de toma de decisiones asistidas por IA para optimizar la atención médica preventiva.

• **Establecer una infraestructura de datos segura y escalable** utilizando servicios de nube que garantice el cumplimiento de estándares internacionales de seguridad médica (HIPAA, GDPR), implemente cifrado end-to-end, y soporte el crecimiento desde usuarios individuales hasta poblaciones de más de 100,000 pacientes simultáneos.

• **Integrar capacidades de análisis predictivo avanzado** que utilicen modelos de series temporales para predecir eventos cardiovasculares con 72 horas de anticipación, considerando patrones históricos, factores de riesgo individuales, y correlaciones entre múltiples variables biomédicas.

<br>

### Organigrama de Trabajo

<br>

| <img src="https://avatars.githubusercontent.com/u/158859972?s=96&v=4" width="100" height="100"> |
|-------------------------------------------|
| **Jaime Vázquez** <br> Líder - Backend & Machine Learning |

<br>

| <img src="https://avatars.githubusercontent.com/u/108243614?v=4" width="100" height="100"> | <img src="https://avatars.githubusercontent.com/u/152038977?v=4" width="100" height="100"> | <img src="https://avatars.githubusercontent.com/u/145584626?v=4" width="100" height="100"> |
|-----------------------------------------------|-----------------------------------------------|-----------------------------------------------|
| **Alejandro** <br> Frontend                  | **Ana Karen** <br> Base de Datos              | **Martín Vargas** <br> Documentación           |

<br>

### Tabla de Colaboradores

| Nombre             | Rol                          |
|--------------------|------------------------------|
| [Jaime](https://github.com/Jaimevs)         | Backend                      |
| [Alejandro](https://github.com/AlejandroRomero17) | Frontend                     |
| [Ana Karen](https://github.com/AnaCrisanto)  | Creación de Base de Datos    |
| [Martín Vargas](https://github.com/MRVargas19) | Documentación                |

<br>

### Diagrama de Gantt

[Diagrama de identificación de tareas para realizar el proyecto, así como de cálculo de tiempos establecidos para cada tarea principal]

### Lista de Tecnologías

#### **Frontend y Móvil**
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/react/react-original.svg" alt="React" width="20" height="20"/> **React** - Biblioteca para interfaces de usuario web
- <img src="https://www.vectorlogo.zone/logos/tailwindcss/tailwindcss-icon.svg" alt="TailwindCSS" width="20" height="20"/> **TailwindCSS** - Framework de CSS utilitario
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/vitejs/vitejs-original.svg" alt="Vite" width="20" height="20"/> **Vite** - Herramienta de construcción rápida para desarrollo web
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/androidstudio/androidstudio-original.svg" alt="Android Studio" width="20" height="20"/> **Android Studio** - IDE oficial para desarrollo Android
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/kotlin/kotlin-original.svg" alt="Kotlin" width="20" height="20"/> **Kotlin** - Lenguaje de programación para Android

#### **Backend y APIs**
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" alt="Python" width="20" height="20"/> **Python** - Lenguaje de programación principal del backend
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/fastapi/fastapi-original.svg" alt="FastAPI" width="20" height="20"/> **FastAPI** - Framework web moderno para APIs Python
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/pytest/pytest-original.svg" alt="Pytest" width="20" height="20"/> **Pytest** - Framework de testing para Python

#### **Machine Learning e IA**
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/tensorflow/tensorflow-original.svg" alt="TensorFlow" width="20" height="20"/> **TensorFlow/Keras** - Plataforma de machine learning
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/scikitlearn/scikitlearn-original.svg" alt="scikit-learn" width="20" height="20"/> **scikit-learn** - Biblioteca de machine learning para Python
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/numpy/numpy-original.svg" alt="NumPy" width="20" height="20"/> **NumPy** - Computación científica con Python
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/pandas/pandas-original.svg" alt="Pandas" width="20" height="20"/> **Pandas** - Análisis y manipulación de datos

#### **Base de Datos**
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/postgresql/postgresql-original.svg" alt="PostgreSQL" width="20" height="20"/> **PostgreSQL** - Sistema de gestión de bases de datos relacional
- <img src="https://avatars.githubusercontent.com/u/39423700?s=200&v=4" alt="Aiven" width="20" height="20"/> **Aiven** - Plataforma de servicios de datos en la nube

#### **Herramientas de Desarrollo**
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/vscode/vscode-original.svg" alt="Visual Studio Code" width="20" height="20"/> **Visual Studio Code** - Editor de código fuente
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/git/git-original.svg" alt="Git" width="20" height="20"/> **Git** - Sistema de control de versiones
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/github/github-original.svg" alt="GitHub" width="20" height="20"/> **GitHub** - Plataforma de desarrollo colaborativo
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/figma/figma-original.svg" alt="Figma" width="20" height="20"/> **Figma** - Herramienta de diseño UI/UX

#### **DevOps y Deployment**
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original.svg" alt="Docker" width="20" height="20"/> **Docker** - Plataforma de contenedorización
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" alt="AWS" width="20" height="20"/> **AWS** - Servicios de computación en la nube
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" alt="Amazon EC2" width="20" height="20"/> **EC2** - Servidores virtuales escalables
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" alt="Amazon S3" width="20" height="20"/> **S3** - Servicio de almacenamiento de objetos
- <img src="https://avatars.githubusercontent.com/u/36424661?s=200&v=4" alt="Render" width="20" height="20"/> **Render** - Plataforma de deployment simplificado

#### **Testing y Desarrollo**
- <img src="https://www.vectorlogo.zone/logos/getpostman/getpostman-icon.svg" alt="Postman" width="20" height="20"/> **Postman** - Plataforma de desarrollo y testing de APIs
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/jupyter/jupyter-original.svg" alt="Jupyter" width="20" height="20"/> **Jupyter Notebook** - Entorno interactivo para análisis de datos
- <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/anaconda/anaconda-original.svg" alt="Anaconda" width="20" height="20"/> **Anaconda** - Distribución de Python para ciencia de datos