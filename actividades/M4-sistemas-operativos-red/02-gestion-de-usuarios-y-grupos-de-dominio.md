# Actividad 16: Gestión de usuarios y grupos de dominio

| Campo | Valor |
|---|---|
| **Bloque** | M4 · Sistemas Operativos en Red |
| **Módulo** | 0224 SOR |
| **Resultados de aprendizaje** | RA3 — Gestiona usuarios y grupos · RA4 — Administra dominios |
| **Duración** | 6 horas |

---

## Objetivos

Al finalizar esta actividad el alumno será capaz de:

- Gestionar cuentas de usuario y grupos en Active Directory (o en el directorio usado por la empresa).
- Comprender la jerarquía de Unidades Organizativas (OU) del dominio.
- Aplicar directivas de grupo (GPO) básicas.
- Documentar los procedimientos de alta, baja y modificación de usuarios.

## Materiales necesarios

- Acceso a «Usuarios y equipos de Active Directory» con permisos de lectura/escritura (en entorno de prueba).
- Acceso a la «Consola de administración de directivas de grupo» (GPMC).
- Si no hay dominio: entorno de prueba con Windows Server en máquina virtual.

## Desarrollo

### 1. Análisis de la estructura del dominio

Documenta la estructura de Active Directory de la empresa (o del entorno de prueba):

- Nombre del dominio (FQDN).
- Estructura de Unidades Organizativas (OU): dibuja el árbol de OUs.
- Grupos principales existentes y su tipo (seguridad vs. distribución; global vs. local de dominio).
- Política de nomenclatura de cuentas de usuario (si existe).

### 2. Ciclo de vida de una cuenta de usuario

Simula el proceso completo de incorporación y baja de un empleado ficticio:

**Alta:**
1. Crea una nueva cuenta de usuario en la OU correspondiente.
2. Establece los atributos mínimos: nombre, apellidos, nombre de inicio de sesión,
   contraseña inicial (marcada como «debe cambiarla en el siguiente inicio»),
   departamento, puesto, teléfono y correo electrónico.
3. Añade el usuario a los grupos necesarios según su departamento.
4. Documenta con capturas todo el proceso.

**Modificación:**
5. Simula un cambio de departamento: mueve el usuario a otra OU y modifica sus grupos.
6. Restablece la contraseña del usuario.
7. Documenta los cambios.

**Baja:**
8. Deshabilita la cuenta (nunca la elimines directamente en producción).
9. Retírala de sus grupos.
10. Muévela a una OU de «Cuentas deshabilitadas» o equivalente.

### 3. Directiva de grupo (GPO)

En el entorno de prueba, crea una GPO sencilla y documenta su aplicación:

- **Nombre de la GPO**: `GPO_FFEOE_[tus_iniciales]`
- **Configuración a aplicar** (elige al menos 2):
  - Establecer un fondo de pantalla corporativo.
  - Deshabilitar el acceso al Panel de control para usuarios estándar.
  - Configurar el servidor proxy en los navegadores.
  - Mapear una unidad de red al iniciar sesión.
- Vincula la GPO a la OU de prueba y verifica su aplicación con `gpresult /r` o `gpupdate /force`.

## Documentación a entregar

- Esquema del árbol de OUs del dominio.
- Capturas del ciclo completo de alta, modificación y baja del usuario ficticio.
- Capturas de la GPO creada y de la verificación de su aplicación.

## Evaluación

| Criterio | Peso | Descripción |
|---|---|---|
| Análisis del dominio | 25 % | Estructura bien documentada |
| Ciclo de vida del usuario | 45 % | Proceso correcto en los tres estados |
| GPO | 30 % | Correctamente configurada y verificada |

## Notas

> Si la empresa no tiene Active Directory (usa Linux con LDAP, por ejemplo), adapta
> esta actividad a la herramienta correspondiente en coordinación con tu tutor/a del centro.
