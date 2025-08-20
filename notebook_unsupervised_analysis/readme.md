# 🤖 Análisis No Supervisado (Machine Learning)

------------------------------------------------------------------------

## 📝 1. Propuesta de la Aplicación

En esta fase se aplicará **análisis no supervisado** sobre los datos
recolectados de los usuarios de la aplicación de prevención de ECNT.\
El objetivo es **agrupar y encontrar patrones ocultos** en los datos
relacionados con factores de riesgo como:\
✔️ Niveles de actividad física\
✔️ Alimentación\
✔️ Índice de masa corporal (IMC)\
✔️ Hábitos de sueño\
✔️ Valores fisiológicos (ej. presión arterial, glucosa, frecuencia
cardiaca)

> 🎯 Con esta aplicación se busca identificar **perfiles de riesgo** en
> la población para generar alertas, recomendaciones personalizadas y
> estrategias de prevención.

------------------------------------------------------------------------

## ⚙️ 2. Elección del Mecanismo a Utilizar

El análisis **no supervisado** permite encontrar estructuras en los
datos sin necesidad de etiquetas previas.\
Para este proyecto se consideran los siguientes algoritmos:

🔹 **K-Means Clustering** → para segmentar a los usuarios en grupos de
riesgo (ej. bajo, medio, alto).\
🔹 **Análisis de Componentes Principales (PCA)** → para reducir la
dimensionalidad y visualizar patrones en factores de riesgo.\
🔹 **DBSCAN** → para detectar anomalías o usuarios con hábitos poco
comunes que podrían representar riesgos específicos.

📌 La elección del algoritmo final dependerá de la calidad y cantidad
del dataset obtenido en la fase ETL.\
Se priorizarán los métodos que permitan **interpretar los resultados
clínicamente**.

------------------------------------------------------------------------

## 📚 3. Marco Teórico

El **análisis no supervisado** busca identificar relaciones entre datos
sin una variable objetivo definida.

-   **Clustering (agrupamiento):** Técnica matemática que organiza a los
    individuos en grupos homogéneos según sus características.\

-   **K-Means:** Minimiza la distancia entre los puntos de datos y los
    centroides del grupo asignado.

    -   Fórmula:\
        \[ J = `\sum`{=tex}*{i=1}\^{k} `\sum`{=tex}*{x_j
        `\in `{=tex}C_i} \|\|x_j - `\mu`{=tex}\_i\|\|\^2 \]\
        donde (C_i) es el conjunto de puntos en el clúster (i), y
        (`\mu`{=tex}\_i) es el centroide.

-   **PCA (Análisis de Componentes Principales):** Reduce la
    dimensionalidad del dataset para identificar los factores más
    influyentes.

-   **Aplicación en salud:**\
    Estas técnicas se usan para identificar patrones de riesgo en
    enfermedades como **diabetes tipo 2, hipertensión, obesidad y
    enfermedades cardiovasculares**.

------------------------------------------------------------------------

## 🖥️ 4. Aplicación del Mecanismo

Se utilizarán librerías de **Python** para implementar los algoritmos:

``` python
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.cluster import KMeans
from sklearn.decomposition import PCA

# Cargar dataset con hábitos y métricas de salud
data = pd.read_csv("usuarios_ecnt.csv")

# K-Means con 3 clusters (bajo, medio y alto riesgo)
kmeans = KMeans(n_clusters=3, random_state=42)
data["cluster"] = kmeans.fit_predict(data[["imc","glucosa","actividad_fisica"]])

# PCA para reducción de dimensiones y visualización
pca = PCA(n_components=2)
data_pca = pca.fit_transform(data[["imc","glucosa","actividad_fisica"]])
```

💡 Cada grupo identificado se interpretará como un **perfil de riesgo en
ECNT**.

------------------------------------------------------------------------

## 📊 5. Gráficos Generados

Se deben incluir al menos **3 gráficos** para interpretar los
resultados:

1.  📈 **Clusters de usuarios según IMC y glucosa** (ejemplo: bajo,
    medio y alto riesgo).\
2.  🗂️ **Mapa PCA** mostrando los factores de mayor peso en los perfiles
    de riesgo.\
3.  📉 **Distribución de hábitos saludables** (ejercicio, sueño, dieta)
    por clúster de riesgo.

> Estos gráficos facilitarán la **visualización de patrones ocultos** y
> la identificación de perfiles de riesgo en la población.

------------------------------------------------------------------------

## 🧪 6. Resultados Obtenidos

Tras aplicar los algoritmos se esperan resultados como:

-   Identificación de **3 perfiles de riesgo principales**:\
    🔵 Usuarios saludables (bajo riesgo).\
    🟡 Usuarios con hábitos intermedios (riesgo moderado).\
    🔴 Usuarios con indicadores críticos (alto riesgo).

-   Detección de **factores clave** en la predicción de ECNT (ej.
    sedentarismo, IMC elevado y niveles altos de glucosa).\

-   Visualización de **anomalías**: personas con hábitos extremos que
    requieren intervención inmediata.

Estos resultados servirán como **base para enviar notificaciones y
alertas personalizadas** en la aplicación.

------------------------------------------------------------------------

## ✅ 7. Conclusión de la Fase del Proyecto

📌 El análisis no supervisado permitió **descubrir patrones y agrupar a
los usuarios** sin necesidad de etiquetas previas.

-   Se evidenció que factores como **IMC, glucosa y actividad física**
    son determinantes en la prevención de ECNT.\
-   Los clústeres obtenidos ofrecen una **herramienta práctica para
    segmentar a la población** y diseñar estrategias de prevención
    específicas.\
-   Se generó un **modelo de apoyo a la toma de decisiones clínicas y de
    salud pública**.

✨ En conclusión, esta fase demuestra la importancia del **Machine
Learning no supervisado** para anticipar riesgos y personalizar la
prevención de **enfermedades crónicas no transmisibles**.
