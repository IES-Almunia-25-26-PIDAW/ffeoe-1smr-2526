# Actividad 8: Administración de usuarios y permisos locales

| Campo | Valor |
|---|---|
| **Bloque** | M2 · Sistemas Operativos Monopuesto |
| **Módulo** | 0222 SOM |
| **Resultados de aprendizaje** | RA3 — Administra cuentas y permisos · RA2 — Gestiona la información del sistema |
| **Duración** | 5 horas |

---

## Objetivos

Al finalizar esta actividad el alumno será capaz de:

- Crear y gestionar cuentas de usuario y grupos locales en Windows/Linux.
- Asignar permisos sobre ficheros y carpetas según el principio de mínimo privilegio.
- Configurar directivas de contraseñas y bloqueo de cuentas.
- Comprender y aplicar la política de gestión de accesos de la empresa.

## Materiales necesarios

- Equipo con Windows 10/11 Pro o Windows Server (o Linux con gestión de usuarios).
- Acceso con permisos de administrador al sistema.
- Política de gestión de accesos de la empresa (si existe documentada).

## Desarrollo

### 1. Análisis de la política de usuarios de la empresa

Antes de realizar cambios, estudia la situación actual:

- ¿Usan cuentas locales o cuentas de dominio (Active Directory)?
- ¿Cuántos tipos de usuario existen (administrador, usuario estándar, invitado)?
- ¿Existe una política de contraseñas definida? ¿Cuál es?
- ¿Se aplica el principio de mínimo privilegio?

### 2. Gestión de cuentas de usuario

En un equipo de prueba o en el entorno asignado por tu tutor/a, realiza las
siguientes operaciones y documenta cada una con una captura de pantalla:

- Crear una cuenta de usuario estándar para un empleado ficticio.
- Crear un grupo local apropiado (p. ej. «Usuarios_TIC»).
- Añadir el usuario al grupo.
- Establecer una contraseña segura siguiendo la política de la empresa.
- Configurar la expiración de la cuenta.
- Deshabilitar y luego reactivar la cuenta.

### 3. Permisos sobre carpetas y ficheros

Crea la siguiente estructura de carpetas de prueba y aplica los permisos indicados:

```
C:\Empresa\
    Documentos_Comunes\   → Todos los usuarios: Lectura y escritura
    Confidencial\         → Solo Administradores: Control total
    Proyectos\            → Grupo Usuarios_TIC: Lectura y escritura
        Proyecto_A\       → Solo usuario creado: Control total
```

Documenta los permisos aplicados con capturas de las propiedades de seguridad de cada carpeta.

### 4. Directivas de seguridad

Accede a la «Directiva de seguridad local» (secpol.msc) y configura:

- Longitud mínima de contraseña: 10 caracteres.
- La contraseña debe cumplir los requisitos de complejidad.
- Vigencia máxima de contraseña: 90 días.
- Umbral de bloqueo de cuenta: 5 intentos fallidos.
- Duración del bloqueo: 15 minutos.

Documenta la configuración con capturas antes y después del cambio.

## Documentación a entregar

- Informe del análisis de la política de usuarios de la empresa.
- Capturas documentadas de todas las operaciones realizadas.
- Captura de la configuración de directivas de seguridad aplicada.

## Evaluación

| Criterio | Peso | Descripción |
|---|---|---|
| Gestión de cuentas | 35 % | Operaciones correctas y bien documentadas |
| Permisos sobre carpetas | 35 % | Estructura y permisos correctamente configurados |
| Directivas de seguridad | 30 % | Configuración correcta y justificada |

## Notas

> Realiza esta práctica siempre en entornos de prueba o con la supervisión y
> autorización expresa de tu tutor/a de empresa. Nunca modifiques cuentas de
> usuarios reales de producción sin permiso.
