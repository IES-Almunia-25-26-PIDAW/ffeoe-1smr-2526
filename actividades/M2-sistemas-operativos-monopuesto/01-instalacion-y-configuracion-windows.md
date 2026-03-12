# Actividad 7: Instalación y configuración de Windows en la empresa

| Campo | Valor |
|---|---|
| **Bloque** | M2 · Sistemas Operativos Monopuesto |
| **Módulo** | 0222 SOM |
| **Resultados de aprendizaje** | RA1 — Instala sistemas operativos · RA2 — Gestiona la información del sistema |
| **Duración** | 6 horas |

---

## Objetivos

Al finalizar esta actividad el alumno será capaz de:

- Instalar Windows siguiendo los estándares de la empresa.
- Aplicar una configuración de sistema coherente con el entorno corporativo.
- Configurar las actualizaciones automáticas y la seguridad básica del sistema.
- Documentar el proceso de instalación para que sea reproducible.

## Materiales necesarios

- ISO de Windows en la versión utilizada por la empresa (o imagen corporativa).
- USB booteable o acceso al servidor de despliegue (WDS/MDT si existe).
- Clave de activación o acceso a KMS corporativo.
- Guía de instalación estándar de la empresa (si existe).

## Desarrollo

### 1. Análisis previo: estándar de la empresa

Antes de instalar, entrevista brevemente a tu tutor/a y responde:

- ¿Qué versión y edición de Windows utiliza la empresa?
- ¿Existe una imagen corporativa personalizada?
- ¿Los equipos se unen a un dominio Active Directory?
- ¿Existe un servidor WSUS para las actualizaciones?
- ¿Qué software se instala por defecto en todos los equipos?

### 2. Instalación del sistema operativo

Realiza la instalación documentando cada decisión:

- **Particionado**: esquema elegido (tamaño de partición de sistema, datos, etc.) y justificación.
- **Configuración regional**: idioma, zona horaria, distribución de teclado.
- **Nombre del equipo**: ¿Sigue alguna nomenclatura estándar de la empresa?
- **Cuenta local vs. cuenta de dominio**: indica cuál aplica y por qué.

### 3. Configuración post-instalación

Tras la instalación, aplica y documenta (con capturas):

- Unión al dominio corporativo (si procede) o configuración del grupo de trabajo.
- Configuración de actualizaciones de Windows.
- Instalación de drivers (verifica que no quedan dispositivos sin reconocer).
- Configuración del firewall de Windows.
- Activación del cifrado BitLocker (si la empresa lo requiere).
- Instalación del agente antivirus corporativo.

### 4. Creación del procedimiento de instalación

Redacta un documento de procedimiento (checklist) que recoja todos los pasos
realizados, de forma que otro técnico pueda reproducir exactamente la misma
instalación. Incluye capturas de pantalla clave.

## Documentación a entregar

- Checklist de instalación completado (con capturas).
- Documento de procedimiento de instalación estándar.
- Captura del Administrador de dispositivos sin errores y del panel de sistema.

## Evaluación

| Criterio | Peso | Descripción |
|---|---|---|
| Proceso de instalación | 35 % | Instalación correcta, decisiones justificadas |
| Configuración corporativa | 35 % | Correctamente integrado en el entorno de la empresa |
| Procedimiento documentado | 30 % | Reproducible, claro y con capturas |

## Notas

> Si la empresa usa Linux o macOS como SO principal, adapta esta actividad
> a dicho sistema operativo en coordinación con tu tutor/a del centro.
