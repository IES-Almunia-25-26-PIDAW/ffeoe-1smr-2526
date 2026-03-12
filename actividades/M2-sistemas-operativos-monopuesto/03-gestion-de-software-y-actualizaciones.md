# Actividad 9: Gestión de software y actualizaciones

| Campo | Valor |
|---|---|
| **Bloque** | M2 · Sistemas Operativos Monopuesto |
| **Módulo** | 0222 SOM |
| **Resultados de aprendizaje** | RA5 — Gestiona el software de aplicación · RA2 — Gestiona la información |
| **Duración** | 4 horas |

---

## Objetivos

Al finalizar esta actividad el alumno será capaz de:

- Instalar, actualizar y desinstalar software de forma controlada y documentada.
- Gestionar las actualizaciones del sistema operativo en el entorno corporativo.
- Utilizar herramientas de despliegue de software si la empresa dispone de ellas.
- Evaluar el software instalado en los equipos e identificar aplicaciones no autorizadas.

## Materiales necesarios

- Acceso a Windows Update o WSUS corporativo.
- Herramienta de inventariado de software (Belarc Advisor, PDQ Inventory, o equivalente).
- Política de software autorizado de la empresa (si existe).

## Desarrollo

### 1. Auditoría del software instalado

En al menos **3 equipos**, genera un listado del software instalado. Puedes usar
Belarc Advisor, el panel de «Aplicaciones» de Windows o PowerShell:

```powershell
Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* |
  Select-Object DisplayName, DisplayVersion, Publisher, InstallDate |
  Sort-Object DisplayName | Export-Csv software.csv -NoTypeInformation
```

A partir del listado, identifica:

- Software con versiones desactualizadas (comprueba la versión actual del fabricante).
- Software que no figure en la lista de aplicaciones autorizadas por la empresa.
- Software potencialmente no deseado (PUP) o innecesario.

### 2. Gestión de actualizaciones

Documenta el estado de actualizaciones en los equipos auditados:

- ¿Tienen todas las actualizaciones de seguridad críticas instaladas?
- ¿Está configurado Windows Update de forma coherente (¿horario de reinicio, etc.)?
- Si existe WSUS: ¿el equipo está correctamente registrado? ¿Cuándo fue la última sincronización?

Aplica las actualizaciones pendientes en un equipo y documenta el proceso.

### 3. Instalación controlada de software

Con autorización de tu tutor/a de empresa, instala en un equipo de prueba
una aplicación requerida por la empresa. Documenta:

- Nombre y versión del software instalado.
- Fuente de descarga (sitio oficial).
- Opciones de instalación elegidas (instalación típica vs. personalizada).
- Verificación del correcto funcionamiento.
- Registro en el inventario de software.

### 4. Desinstalación y limpieza

Desinstala una aplicación no utilizada o desautorizada (previamente acordada con
tu tutor/a). Verifica que la desinstalación es completa (sin residuos en el registro
ni en el disco) y documenta con capturas.

## Documentación a entregar

- Listado de software de los 3 equipos auditados (CSV o tabla).
- Informe de estado de actualizaciones con acciones tomadas.
- Ficha de la instalación realizada.

## Evaluación

| Criterio | Peso | Descripción |
|---|---|---|
| Auditoría de software | 35 % | Listado completo, análisis correcto de versiones y autorizaciones |
| Gestión de actualizaciones | 35 % | Estado correcto tras las actuaciones |
| Instalación/desinstalación | 30 % | Proceso correcto y documentado |

## Notas

> El software instalado en equipos corporativos debe disponer siempre de licencia válida.
> Nunca instales software sin licencia o de fuentes no oficiales.
