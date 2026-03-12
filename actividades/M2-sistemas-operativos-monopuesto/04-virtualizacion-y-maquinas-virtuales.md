# Actividad 10: Virtualización y máquinas virtuales

| Campo | Valor |
|---|---|
| **Bloque** | M2 · Sistemas Operativos Monopuesto |
| **Módulo** | 0222 SOM |
| **Resultados de aprendizaje** | RA6 — Crea y gestiona máquinas virtuales |
| **Duración** | 5 horas |

---

## Objetivos

Al finalizar esta actividad el alumno será capaz de:

- Identificar el uso que hace la empresa de la virtualización.
- Crear y configurar una máquina virtual con los recursos adecuados.
- Gestionar snapshots o puntos de restauración de una MV.
- Comprender las ventajas de la virtualización en entornos empresariales.

## Materiales necesarios

- Software de virtualización: VirtualBox, VMware Workstation/Player, Hyper-V o el que use la empresa.
- ISO del sistema operativo a virtualizar.
- Equipo anfitrión con al menos 8 GB de RAM y procesador con soporte VT-x/AMD-V.

## Desarrollo

### 1. Análisis del uso de virtualización en la empresa

Entrevista a tu tutor/a y documenta:

- ¿Usa la empresa virtualización? ¿En servidores, en escritorio o en ambos?
- ¿Qué plataforma de virtualización utilizan (VMware vSphere, Hyper-V, Proxmox, etc.)?
- ¿Para qué usan las máquinas virtuales (desarrollo, pruebas, servicios, etc.)?
- ¿Cuántas MV tienen en producción aproximadamente?

### 2. Creación de una máquina virtual

Con el software de virtualización disponible, crea una nueva MV con los siguientes parámetros
(ajusta según los recursos del equipo anfitrión):

| Parámetro | Valor |
|---|---|
| Nombre | MV_FFEOE_[tus iniciales] |
| SO invitado | [el indicado por tu tutor/a] |
| RAM asignada | 2048 MB (mínimo) |
| Almacenamiento | 40 GB (disco dinámico) |
| Red | NAT o Red interna (según necesidad) |
| Procesadores virtuales | 2 |

Documenta cada decisión de configuración con capturas de pantalla.

### 3. Instalación del SO invitado y las Guest Additions / VMware Tools

Instala el sistema operativo en la MV e instala las herramientas de integración
del hipervisor (VirtualBox Guest Additions, VMware Tools, etc.). Documenta las
mejoras que aportan estas herramientas.

### 4. Gestión de snapshots

Realiza las siguientes operaciones y documenta cada una:

1. Crea un snapshot de la MV en estado «limpio» tras la instalación.
2. Realiza un cambio en la MV (instala una aplicación, modifica configuración).
3. Restaura el snapshot y verifica que los cambios han desaparecido.
4. Crea un segundo snapshot «con aplicación instalada».
5. Reflexiona sobre la utilidad de los snapshots en entornos de prueba y en producción.

### 5. Exportación de la MV

Exporta la MV en formato estándar (OVA/OVF) y documenta el proceso. ¿Para qué
sirve exportar una MV? ¿En qué escenarios empresariales es útil?

## Documentación a entregar

- Informe sobre el uso de virtualización en la empresa.
- Capturas documentadas del proceso de creación e instalación de la MV.
- Capturas del ciclo completo de gestión de snapshots.
- Reflexión sobre las ventajas de la virtualización (mínimo media página).

## Evaluación

| Criterio | Peso | Descripción |
|---|---|---|
| Análisis de virtualización en la empresa | 20 % | Información real, bien documentada |
| Creación y configuración de la MV | 40 % | MV correctamente configurada y funcional |
| Gestión de snapshots y exportación | 40 % | Operaciones correctas y reflexión justificada |

## Notas

> Si la empresa no dispone de software de virtualización, instala VirtualBox
> (licencia gratuita GPL) en un equipo disponible para prácticas, con autorización
> de tu tutor/a de empresa.
