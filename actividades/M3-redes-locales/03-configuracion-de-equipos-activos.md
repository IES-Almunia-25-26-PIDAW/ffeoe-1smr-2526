# Actividad 13: Configuración de equipos activos de red

| Campo | Valor |
|---|---|
| **Bloque** | M3 · Redes Locales |
| **Módulo** | 0225 RL |
| **Resultados de aprendizaje** | RA3 — Instala y configura equipos activos · RA4 — Mantiene redes cableadas e inalámbricas |
| **Duración** | 6 horas |

---

## Objetivos

Al finalizar esta actividad el alumno será capaz de:

- Acceder a la interfaz de administración de switches y puntos de acceso WiFi.
- Configurar parámetros básicos de un switch gestionable.
- Configurar y optimizar la red inalámbrica de la empresa.
- Documentar la configuración de los equipos de red.

## Materiales necesarios

- Acceso al panel de administración de switch y/o punto de acceso WiFi (con autorización).
- Cable de consola o acceso web/SSH según el dispositivo.
- Analizador de WiFi: WiFi Analyzer (Android) o inSSIDer.

## Desarrollo

### 1. Acceso y revisión del switch gestionable

Accede a la interfaz de administración del switch (web o CLI) y documenta:

- Marca, modelo y versión de firmware.
- Tabla MAC: ¿cuántos dispositivos tiene registrados?
- Estado de los puertos: ¿cuántos están activos? ¿A qué velocidad negocian?
- ¿Está configurado Spanning Tree Protocol (STP)? ¿Qué variante?
- ¿Existen VLANs configuradas? Lista las que encuentres.
- ¿Está habilitado el acceso SSH o solo HTTP?

### 2. Configuración básica del switch (entorno de prueba)

Si tu tutor/a autoriza realizar cambios en un switch de prueba (o en un entorno
de simulación con Cisco Packet Tracer), configura los siguientes elementos
y documenta con capturas:

- Cambio del nombre del dispositivo (hostname).
- Cambio de la contraseña de administración.
- Configuración de la IP de gestión.
- Habilitación de SSH y deshabilitación de Telnet.
- Configuración de una VLAN de gestión.
- Configuración de un puerto como troncal (trunk) para pasar VLANs.

### 3. Análisis y configuración de la red inalámbrica

Utiliza un analizador WiFi para hacer un mapa de las redes inalámbricas presentes:

- Lista las SSIDs detectadas (de la empresa y vecinas).
- Anota los canales utilizados y la intensidad de señal (dBm).
- Identifica solapamiento de canales entre APs propios o vecinos.
- ¿Qué estándares WiFi están en uso (802.11n, ac/WiFi 5, ax/WiFi 6)?

Accede al panel del punto de acceso y documenta (sin hacer cambios en producción,
o con autorización):

- SSID, banda (2,4 / 5 GHz), canal y ancho de canal configurados.
- Protocolo de seguridad (WPA2/WPA3, método de autenticación).
- ¿Existe SSID separada para invitados con aislamiento de red?

### 4. Informe de optimización WiFi

A partir del análisis anterior, propón al menos **2 mejoras** para la red inalámbrica
de la empresa (cambio de canal, actualización de firmware, adición de APs,
separación de bandas, etc.), justificando técnicamente cada propuesta.

## Documentación a entregar

- Capturas y análisis de la configuración del switch.
- Mapa de redes inalámbricas con análisis de canales.
- Informe de optimización WiFi con propuestas justificadas.

## Evaluación

| Criterio | Peso | Descripción |
|---|---|---|
| Análisis del switch | 35 % | Información completa y correctamente interpretada |
| Análisis WiFi | 35 % | Mapa correcto, interpretación adecuada |
| Propuestas de mejora | 30 % | Técnicamente correctas y justificadas |

## Notas

> Nunca realices cambios en equipos de producción sin autorización explícita.
> Para las prácticas de configuración CLI, utiliza Cisco Packet Tracer o GNS3
> si no hay equipos de laboratorio disponibles.
