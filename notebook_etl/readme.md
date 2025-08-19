## Proceso ETL (Extracción, Transformación y Carga)

#### Importación de librerías
###### Comandos de importación y breve explicación de la librerias utilizadas para la manipulación de datos, limpieza y transformación
```python
import pandas as pd                    # Manipulación y análisis de datos en estructuras tipo DataFrame
import numpy as np                     # Cálculo numérico y operaciones con arrays
import matplotlib.pyplot as plt        # Visualización de gráficos estáticos
import seaborn as sns                  # Visualización estadística avanzada con gráficos más estilizados
import plotly.express as px            # Visualización interactiva de datos
import plotly.graph_objects as go      # Gráficos personalizados interactivos
from plotly.subplots import make_subplots  # Creación de dashboards con múltiples gráficos
import warnings                        # Manejo de advertencias para limpiar la salida del notebook
from datetime import datetime, timedelta  # Manejo de fechas y tiempos
import os                              # Interacción con el sistema operativo (rutas, archivos, variables de entorno)
from dotenv import load_dotenv          # Carga de variables de entorno desde archivo .env
from sqlalchemy import create_engine, text  # Conexión y consultas a bases de datos SQL
import pymysql                          # Conector para bases de datos MySQL
from scipy import stats                 # Funciones estadísticas y científicas
from sklearn.preprocessing import StandardScaler, MinMaxScaler, RobustScaler  # Escaladores para normalización de datos
from sklearn.cluster import DBSCAN      # Algoritmo de clustering basado en densidad
import logging                          # Registro de logs para monitoreo y depuración
import json                             # Manejo de archivos en formato JSON
```


### Carga de datos
###### Comandos de carga de los datos en memoria desde su origen fisico
```python
load_dotenv()
DATABASE_URL = os.getenv('DATABASE_URL')
engine = create_engine(DATABASE_URL)

query = """
    SELECT
        ID,
        Usuario_ID,
        Smartwatch_ID,
        Timestamp_medicion,
        Frecuencia_cardiaca,
        Presion_sistolica,
        Presion_diastolica,
        Saturacion_oxigeno,
        Temperatura,
        Nivel_estres,
        Variabilidad_ritmo,
        Estatus,
        Fecha_Registro,
        Fecha_Actualizacion
    FROM tbb_mediciones_cardiacas
    ORDER BY Usuario_ID, Timestamp_medicion
    ;
"""
df_raw = pd.read_sql_query(query, engine)
```

### Creación del Dataframe
###### Comandos de la creación de (los) dataframe(s) a manipular

```python
df_raw.head()
df_raw.shape
```


### Analisis Exploratorio de Datos (EDA)
###### Comandos que permiten comprender la composición y estructura de los datos
```python
print(f"Filas: {df_raw.shape[0]:,}  Columnas: {df_raw.shape[1]}")
print(f"Memoria: {df_raw.memory_usage(deep=True).sum() / 1024**2:.2f} MB")

user_stats = df_raw.groupby('Usuario_ID').agg({
    'ID': 'count',
    'Timestamp_medicion': ['min', 'max'],
    'Smartwatch_ID': 'nunique'
})
user_stats.columns = ['Total_Mediciones', 'Primera_Medicion', 'Ultima_Medicion', 'Dispositivos_Usados']

pd.to_datetime(user_stats['Primera_Medicion'])
pd.to_datetime(user_stats['Ultima_Medicion'])
```


### Limpieza de Datos
###### Comandos para la deburación y limpieza de datos
```python
df_clean = df_raw.copy()

df_clean = df_clean.drop_duplicates()
df_clean = df_clean.sort_values('Fecha_Registro').drop_duplicates(
    subset=['Usuario_ID', 'Timestamp_medicion'], keep='last'
)

rangos_vitales = {
    'Frecuencia_cardiaca': (25, 250),
    'Presion_sistolica': (50, 300),
    'Presion_diastolica': (20, 200),
    'Saturacion_oxigeno': (50, 100),
    'Temperatura': (28.0, 44.0),
    'Nivel_estres': (0, 10),
    'Variabilidad_ritmo': (1, 300)
}
registros_a_eliminar = pd.Series([False]*len(df_clean))
for variable, (min_val, max_val) in rangos_vitales.items():
    if variable in df_clean.columns:
        fuera_rango = (df_clean[variable] < min_val) | (df_clean[variable] > max_val)
        registros_a_eliminar = registros_a_eliminar | fuera_rango
df_clean = df_clean[~registros_a_eliminar].reset_index(drop=True)
```

### Visualización de Datos (2 a 5 gráficas)
###### Generación de gráficos base para la visualización del volumen. categorización e identificación de datos significativos para el análisis de datos
```python
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(16, 6))
records_data = ['Inicial', 'Final', 'Eliminados']
records_values = [initial_total, final_total, total_eliminated]
ax1.bar(records_data, records_values)
ax2.pie([final_total, total_eliminated], labels=['Conservados', 'Eliminados'], autopct='')
plt.tight_layout(); plt.show()
```


### Exportación de DataSET (.csv)
###### Generación de un archivo de datos simplificado y limpio que servira para alimentar los algoritmos de aprendizaje supervisado y no supervisado

```python
df_clean.to_csv('data/processed/mediciones_cardiacas_clean.csv', index=False)

metadata = {
    "proceso_limpieza": {
        "fecha_procesamiento": datetime.now().isoformat(),
        "registros_finales": len(df_clean),
        "usuarios_finales": df_clean['Usuario_ID'].nunique(),
        "columnas_finales": list(df_clean.columns)
    }
}
with open('data/processed/cleaning_metadata.json', 'w') as f:
    json.dump(metadata, f, indent=2)
```

### Conclusión de esta Fase
###### Redacción general de la fase del proyecto
La fase de ETL (Extracción, Transformación y Carga) permitió consolidar y depurar de manera sistemática los datos provenientes de la base de datos MySQL, garantizando su integridad, consistencia y calidad. Durante este proceso se eliminaron duplicados y registros fuera de los rangos esperados, se estandarizó la información y se organizaron los datos en un formato estructurado, listo para análisis posteriores.

Como resultado, se generó un dataset limpio en formato CSV, acompañado de un archivo de metadatos que documenta el proceso, proporcionando trazabilidad y transparencia sobre las transformaciones realizadas. Esta preparación sólida de los datos establece una base confiable para la exploración, la visualización y la aplicación de algoritmos de aprendizaje automático y modelos predictivos, asegurando que los análisis futuros sean precisos y reproducibles.
