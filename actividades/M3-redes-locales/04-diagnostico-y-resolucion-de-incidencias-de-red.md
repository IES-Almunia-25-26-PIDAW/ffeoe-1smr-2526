# Actividad 14: Diagnóstico y resolución de incidencias de red

| Campo | Valor |
|---|---|
| **Bloque** | M3 · Redes Locales |
| **Módulo** | 0225 RL |
| **Resultados de aprendizaje** | RA4 — Mantiene redes locales · RA5 — Aplica protocolos de red |
| **Duración** | 6 horas |

---

## Objetivos

Al finalizar esta actividad el alumno será capaz de:

- Diagnosticar incidencias de conectividad de red aplicando metodología sistemática.
- Utilizar las herramientas del sistema operativo para el diagnóstico de red.
- Resolver incidencias reales o simuladas de conectividad.
- Documentar el proceso de diagnóstico y resolución.

## Materiales necesarios

- Equipo Windows o Linux con acceso a la red de la empresa.
- Herramientas: `ping`, `tracert`/`traceroute`, `ipconfig`/`ip a`, `nslookup`, `netstat`, Wireshark (si está autorizado).
- Acceso al sistema de tickets de incidencias de la empresa (si existe).

## Desarrollo

### 1. Comandos de diagnóstico de red

Ejecuta los siguientes comandos desde un equipo de la red de la empresa y documenta
el resultado de cada uno con una captura de pantalla y una breve interpretación:

| Comando | Propósito | Resultado obtenido | Interpretación |
|---|---|---|---|
| `ipconfig /all` | Configuración de red del equipo | | |
| `ping 127.0.0.1` | Verificar la pila TCP/IP local | | |
| `ping [gateway]` | Conectividad con el router | | |
| `ping 8.8.8.8` | Conectividad con Internet | | |
| `ping google.com` | Resolución DNS y conectividad | | |
| `tracert google.com` | Ruta hasta el destino | | |
| `nslookup google.com` | Consulta al servidor DNS | | |
| `netstat -an` | Conexiones activas y puertos en escucha | | |

### 2. Incidencias de red (reales o simuladas)

Atiende o solicita a tu tutor/a que te asigne al menos **2 incidencias de red reales**.
Si no hay disponibles, acuerda con tu tutor/a simular al menos dos de las siguientes:

- Equipo sin conectividad (cable desconectado, IP incorrecta, DHCP no responde).
- Equipo con conectividad local pero sin acceso a Internet (DNS mal configurado, gateway incorrecto).
- Acceso lento a recursos de red (saturación de ancho de banda, colisiones).
- Equipo no detectado en la red (tarjeta de red deshabilitada, firewall bloqueando).

Para cada incidencia, documenta:

1. Descripción del síntoma comunicado por el usuario.
2. Comandos de diagnóstico utilizados y resultados obtenidos.
3. Hipótesis barajadas (método de descarte).
4. Causa raíz identificada.
5. Solución aplicada.
6. Verificación de la solución.

### 3. Protocolo de diagnóstico personal

A partir de las incidencias trabajadas, elabora tu propio **árbol de decisión o diagrama
de flujo** para diagnosticar incidencias de conectividad, desde «el equipo no tiene red»
hasta la resolución del problema.

## Documentación a entregar

- Tabla de comandos con capturas e interpretaciones.
- Ficha completa de cada incidencia (diagnosis y resolución).
- Diagrama de flujo de diagnóstico de red.

## Evaluación

| Criterio | Peso | Descripción |
|---|---|---|
| Comandos de diagnóstico | 30 % | Correctamente ejecutados e interpretados |
| Resolución de incidencias | 40 % | Metodología sistemática, causa raíz identificada |
| Diagrama de flujo | 30 % | Lógico, completo y aplicable |

## Notas

> El diagnóstico de red es una de las competencias más valoradas en el sector TIC.
> Acostúmbrate siempre a documentar tus incidencias: el historial de resoluciones
> es un recurso muy valioso para el equipo técnico.
