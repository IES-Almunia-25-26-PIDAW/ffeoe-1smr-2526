# Actividad 18: Monitorización del servidor y copias de seguridad

| Campo | Valor |
|---|---|
| **Bloque** | M4 · Sistemas Operativos en Red |
| **Módulo** | 0224 SOR |
| **Resultados de aprendizaje** | RA2 — Instala/configura SOR · RA5 — Gestiona recursos compartidos |
| **Duración** | 6 horas |

---

## Objetivos

Al finalizar esta actividad el alumno será capaz de:

- Monitorizar el rendimiento del servidor usando las herramientas del sistema.
- Analizar los registros de eventos (logs) del servidor.
- Verificar y documentar la política de copias de seguridad de la empresa.
- Proponer mejoras a la estrategia de backup existente.

## Materiales necesarios

- Acceso al servidor con permisos de administrador (o acceso de solo lectura con supervisión).
- Herramientas: Visor de eventos, Monitor de rendimiento, Task Manager / Resource Monitor.
- Documentación de la política de backups de la empresa (si existe).

## Desarrollo

### 1. Monitorización del rendimiento

Accede al «Monitor de recursos» o «Monitor de rendimiento» del servidor y registra
los siguientes indicadores durante al menos **10 minutos** en horario de trabajo normal:

| Indicador | Valor mínimo | Valor máximo | Valor promedio | Interpretación |
|---|---|---|---|---|
| CPU (%) | | | | |
| RAM usada (GB) | | | | |
| E/S de disco (MB/s) | | | | |
| Ancho de banda de red (Mbps) | | | | |

¿Existe algún proceso que consuma recursos de forma anómala? ¿Cuál?

### 2. Análisis del Visor de eventos

Accede al «Visor de eventos» de Windows (o `/var/log/` en Linux) y analiza
los registros de las últimas 48 horas. Documenta:

- Número de eventos de tipo: [OK] Información | [!] Advertencia | [X] Error | [!!] Crítico.
- Los **3 eventos de error o advertencia** más frecuentes: anota el ID del evento,
  el origen y una descripción del problema que indica.
- ¿Existe algún evento relacionado con errores de autenticación fallida (posible
  intento de acceso no autorizado)?

### 3. Política de copias de seguridad

Documenta la política de backups que aplica la empresa:

| Aspecto | Detalle |
|---|---|
| ¿Existe política documentada de backups? | |
| Herramienta de backup utilizada | |
| Tipo de backup (completo, incremental, diferencial) | |
| Frecuencia de las copias | |
| Destino del backup (NAS, cinta, nube, externo) | |
| Retención de las copias (¿cuánto tiempo se guardan?) | |
| ¿Se aplica la regla 3-2-1? | |
| ¿Se realizan pruebas de restauración periódicas? | |

*Regla 3-2-1: 3 copias, en 2 soportes diferentes, 1 fuera de las instalaciones.*

### 4. Verificación de la última copia de seguridad

Con autorización de tu tutor/a, verifica el resultado de la última copia de seguridad:

- ¿Completó correctamente o hubo errores?
- ¿Cuánto espacio ocupa? ¿Cuánto tiempo tardó?
- Realiza una prueba de restauración de un fichero o carpeta pequeña y verifica
  que el contenido es correcto.

### 5. Propuesta de mejora

Si has detectado deficiencias en la política de backups (o si no existe política formal),
redacta una propuesta de mejora adaptada al tamaño y las necesidades de la empresa.

## Documentación a entregar

- Tabla de indicadores de rendimiento con interpretación.
- Análisis del Visor de eventos con los 3 eventos documentados.
- Tabla de política de backups completada.
- Resultado de la verificación de la última copia.
- Propuesta de mejora (si procede).

## Evaluación

| Criterio | Peso | Descripción |
|---|---|---|
| Monitorización del rendimiento | 25 % | Datos registrados y correctamente interpretados |
| Análisis de eventos | 25 % | Eventos identificados y explicados |
| Política de backups | 30 % | Tabla completa y evaluación crítica |
| Propuesta de mejora | 20 % | Realista y adaptada a la empresa |

## Notas

> La continuidad del negocio depende directamente de tener una buena política de
> copias de seguridad. Un backup no verificado no es un backup real.
