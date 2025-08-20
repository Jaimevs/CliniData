# 📊 Propuesta de Datawarehouse

---

## 📌 Contexto de un Datawarehouse en el Proyecto

Un **Data Warehouse (DW)** es un sistema de almacenamiento centralizado que integra información proveniente de diferentes fuentes de datos para transformarla en conocimiento útil.

En el proyecto **Clini Data**, el DW permitirá:

- 🔎 Analizar patrones relacionados con enfermedades crónicas.
- 🤖 Entrenar modelos de Machine Learning.
- 📈 Generar reportes predictivos y recomendaciones preventivas.
- 🏥 Respaldar la toma de decisiones clínicas y académicas.

---

### 📖 Definición de Data Warehouse

Un **Data Warehouse** es una base de datos diseñada para el análisis y la toma de decisiones, a diferencia de las bases operacionales (orientadas a transacciones).

**Características principales:**
- 🔗 **Integrado**: recopila información de múltiples fuentes.
- 🎯 **Temático**: organiza datos en torno a áreas clave (ej. salud, actividad física, contexto ambiental).
- ⏳ **Histórico**: mantiene datos a lo largo del tiempo para análisis de tendencias.
- 📂 **No volátil**: una vez cargados, los datos no cambian, solo se consultan.

**Fuentes de datos en Clini Data:**
- 📱 **Internos**: la app móvil (hábitos y registros manuales).
- ⌚ **Sensores**: dispositivos móviles y smartwatch vía Google Fit.
- 🌎 **Externos**: APIs gubernamentales y de salud pública.

---

## 📌 Propuesta de 3 Orígenes de Datos Alternativos

1. **Hábitos y estilo de vida (formularios de la app)**
   - 📌 *Fuente*: cuestionarios de alimentación, sueño, actividad física, consumo de alcohol/tabaco, estrés.
   - ✅ *Valor*: información contextual difícil de capturar con sensores.
   - 🧩 *Ejemplo*: dos usuarios con el mismo ritmo cardiaco, pero con hábitos distintos, presentan diferentes riesgos.

2. **Dispositivos móviles y Google Fit**
   - 📌 *Fuente*: sensores del smartphone (podómetro, acelerómetro, giroscopio) y smartwatch compatibles con Google Fit.
   - ✅ *Valor*: datos biométricos en tiempo real (frecuencia cardiaca, pasos, calorías quemadas, distancia).
   - 🧩 *Ejemplo*: detección de sedentarismo asociado a riesgo de diabetes e hipertensión.

3. **Datos contextuales y ambientales**
   - 📌 *Fuente*: APIs de INEGI, Secretaría de Salud, WHO, SEMARNAT.
   - ✅ *Valor*: factores ambientales y sociales (contaminación, temperatura, altitud, hospitales cercanos).
   - 🧩 *Ejemplo*: usuarios en zonas contaminadas muestran mayor riesgo de asma crónica.

---

## 📌 Experimentos de Asociación (Mezcla de Datos)

Se proponen **5 experimentos** para validar la utilidad de combinar datos:

1. **Actividad física + Hábitos de sueño** → Relación entre falta de sueño y menor beneficio del ejercicio.
2. **Contaminación ambiental + Frecuencia cardiaca** → Impacto de la calidad del aire en salud cardiovascular.
3. **Dieta (formularios) + IMC** → Efecto del consumo de grasas/azúcares en el aumento del IMC.
4. **Estrés reportado + Variabilidad de frecuencia cardiaca (HRV)** → Correlación entre estrés y señales fisiológicas.
5. **Nivel socioeconómico (INEGI) + Rutinas de ejercicio** → Identificación de desigualdades en hábitos saludables.

---

## 📌 Toma de Decisiones

Con base en los experimentos, se plantean **5 supuestos de decisión**:

1. ⚠️ **Alertas personalizadas**: sueño insuficiente + baja actividad → alerta de riesgo metabólico.
2. 🌫️ **Prevención ambiental**: alta contaminación → recomendación de limitar actividades al aire libre.
3. 🍽️ **Recomendación nutricional**: dieta alta en grasas + aumento de IMC → planes preventivos personalizados.
4. 😓 **Gestión del estrés**: estrés elevado + HRV bajo → sugerencia de mindfulness o relajación.
5. 🏘️ **Intervenciones focalizadas**: zonas con bajo nivel socioeconómico + sedentarismo → campañas preventivas dirigidas.

---
