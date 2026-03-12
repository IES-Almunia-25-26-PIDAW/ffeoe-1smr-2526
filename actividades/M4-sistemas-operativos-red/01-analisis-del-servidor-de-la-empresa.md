# Actividad 15: Análisis del servidor o infraestructura de servicios de la empresa

| Campo | Valor |
|---|---|
| **Bloque** | M4 · Sistemas Operativos en Red |
| **Módulo** | 0224 SOR |
| **Resultados de aprendizaje** | RA1 — Reconoce sistemas operativos en red · RA2 — Instala sistemas operativos en red |
| **Duración** | 5 horas |

---

## Objetivos

Al finalizar esta actividad el alumno será capaz de:

- Identificar el sistema operativo en red y la versión utilizada en la empresa.
- Describir los servicios que proporciona el servidor a los clientes.
- Comparar la infraestructura real con otras alternativas del mercado.
- Documentar la arquitectura cliente-servidor de la empresa.

## Materiales necesarios

- Acceso de solo lectura (con autorización) al servidor o a su documentación.
- Herramientas de monitorización del servidor (Task Manager, Performance Monitor, `top`/`htop`).

## Desarrollo

### 1. Identificación del sistema operativo en red

Documenta el sistema operativo del servidor principal de la empresa:

| Campo | Valor |
|---|---|
| Sistema operativo y versión | |
| Edición (Standard, Datacenter, etc.) | |
| Fecha de instalación o última reinstalación | |
| Nivel de actualizaciones (Service Pack, build) | |
| Arquitectura (x64) | |
| Rol principal del servidor | |

### 2. Inventario de servicios del servidor

Lista los servicios que el servidor proporciona a los clientes de la red:

| Servicio | ¿Activo? | Puerto/protocolo | Descripción del uso en la empresa |
|---|---|---|---|
| Active Directory / LDAP | | | |
| DNS | | | |
| DHCP | | | |
| Servidor de ficheros (SMB) | | | |
| Servidor de impresión | | | |
| Servidor web (IIS/Apache) | | | |
| Servidor de correo | | | |
| VPN | | | |
| Copias de seguridad | | | |
| Otros | | | |

### 3. Análisis del rendimiento actual

Con autorización de tu tutor/a, accede a las herramientas de monitorización
del servidor y registra (en un momento de carga normal):

- Uso de CPU (%).
- Uso de RAM (GB usados / GB totales).
- Uso de disco (% de espacio libre por volumen).
- Ancho de banda de red consumido.
- Número de sesiones activas (usuarios conectados).

### 4. Análisis comparativo

A partir de lo observado, responde razonadamente:

- ¿La capacidad del servidor es adecuada para el tamaño de la empresa?
- ¿Sería recomendable migrar algún servicio a la nube? ¿Cuál y por qué?
- ¿Qué alternativas de SO en red (Linux Server, etc.) podrían cubrir las mismas necesidades?

## Documentación a entregar

- Ficha del sistema operativo del servidor.
- Tabla de servicios activos.
- Capturas de los indicadores de rendimiento.
- Análisis comparativo (media página).

## Evaluación

| Criterio | Peso | Descripción |
|---|---|---|
| Identificación del SO | 25 % | Ficha completa y precisa |
| Inventario de servicios | 35 % | Lista completa con descripción del uso real |
| Análisis de rendimiento | 20 % | Datos registrados e interpretados |
| Análisis comparativo | 20 % | Reflexión razonada y fundamentada |

## Notas

> Si la empresa usa servicios en la nube (Microsoft 365, Google Workspace, Azure,
> AWS), documenta también esos servicios y sus equivalentes on-premises.
