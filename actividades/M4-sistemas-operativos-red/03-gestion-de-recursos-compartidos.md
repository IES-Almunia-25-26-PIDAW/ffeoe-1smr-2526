# Actividad 17: Gestión de recursos compartidos en red

| Campo | Valor |
|---|---|
| **Bloque** | M4 · Sistemas Operativos en Red |
| **Módulo** | 0224 SOR |
| **Resultados de aprendizaje** | RA5 — Gestiona recursos compartidos |
| **Duración** | 5 horas |

---

## Objetivos

Al finalizar esta actividad el alumno será capaz de:

- Identificar y documentar los recursos compartidos existentes en la red de la empresa.
- Crear y gestionar carpetas compartidas con permisos adecuados.
- Configurar impresoras compartidas en red.
- Mapear unidades de red desde los clientes.

## Materiales necesarios

- Acceso con permisos de administrador al servidor de ficheros o al equipo con recursos compartidos.
- Equipo cliente Windows para verificar el acceso.
- Acceso a «Administración de equipos» > «Carpetas compartidas».

## Desarrollo

### 1. Inventario de recursos compartidos

Desde el servidor o con el comando `net share` desde un cliente, lista todos los
recursos compartidos de la red y documenta:

| Nombre del recurso | Ruta física | Tipo (carpeta/impresora) | Usuarios/grupos con acceso | Permisos |
|---|---|---|---|---|
| | | | | |

Identifica los recursos administrativos ocultos (ADMIN$, C$, IPC$) y explica
brevemente su función.

### 2. Creación de una carpeta compartida estructurada

En el servidor de prueba, crea la siguiente estructura de carpetas compartidas:

```
\\Servidor\EMPRESA\
    Departamento_TIC\      → Grupo: GRP_TIC · Permisos: Leer y Escribir
    Departamento_Admin\    → Grupo: GRP_Admin · Permisos: Leer y Escribir
    Comun\                 → Todos los usuarios: Leer; GRP_TIC: Leer y Escribir
    Backups\               → Solo Administradores: Control total
```

Para cada carpeta, configura tanto los **permisos de compartición** (Share permissions)
como los **permisos NTFS** (Security). Documenta ambos niveles de permisos con capturas.

Explica la diferencia entre permisos de compartición y permisos NTFS, y cuál prevalece.

### 3. Mapeo de unidades de red

Desde un equipo cliente, mapea las carpetas compartidas creadas:

- **Manual**: desde el Explorador de Windows > «Conectar a unidad de red».
- **Por GPO o script**: crea un script `.bat` con el comando `net use` para mapear
  automáticamente las unidades al iniciar sesión.

Documenta el proceso con capturas y verifica que el acceso funciona correctamente
con diferentes usuarios (uno con acceso y uno sin acceso al recurso).

### 4. Gestión de impresoras compartidas

Si la empresa dispone de impresoras en red, documenta:

- ¿Las impresoras están gestionadas desde un servidor de impresión o directamente?
- Nombre de la impresora compartida y driver instalado.
- ¿Se usa «Seguimiento de documentos» o alguna política de impresión?

Si tienes acceso, instala el controlador de una impresora de red en un equipo cliente
y verifica su funcionamiento.

## Documentación a entregar

- Inventario de recursos compartidos existentes.
- Capturas de la estructura de carpetas creada con permisos configurados.
- Script de mapeo de unidades de red.
- Explicación de permisos de compartición vs. permisos NTFS.

## Evaluación

| Criterio | Peso | Descripción |
|---|---|---|
| Inventario de recursos | 20 % | Completo, con función de recursos administrativos explicada |
| Estructura de carpetas y permisos | 45 % | Correctamente configurada en ambos niveles |
| Mapeo y script | 35 % | Script funcional y verificación correcta |

## Notas

> La correcta gestión de permisos sobre carpetas compartidas es crítica para la
> seguridad de la información. Aplica siempre el principio de mínimo privilegio.
