# Actividad 11: Análisis de la infraestructura de red de la empresa

| Campo | Valor |
|---|---|
| **Bloque** | M3 · Redes Locales |
| **Módulo** | 0225 RL |
| **Resultados de aprendizaje** | RA1 — Reconoce la estructura de redes locales · RA3 — Instala y configura equipos activos |
| **Duración** | 6 horas |

---

## Objetivos

Al finalizar esta actividad el alumno será capaz de:

- Identificar y documentar la topología y los componentes de la red local de la empresa.
- Elaborar un esquema lógico y físico de la red.
- Analizar el direccionamiento IP empleado y la segmentación en subredes o VLANs.
- Proponer mejoras justificadas a la infraestructura existente.

## Materiales necesarios

- Herramientas de análisis de red: Advanced IP Scanner, Angry IP Scanner, Wireshark (si está autorizado).
- Acceso de solo lectura al panel de administración del switch/router (con autorización).
- Papel o software de diagramas (draw.io, Visio, o equivalente) para el esquema de red.

## Desarrollo

### 1. Inventario de equipos de red

Identifica todos los dispositivos de red activos de la empresa. Para cada uno, completa:

| Dispositivo | Marca/Modelo | Función | Dirección IP de gestión | Ubicación |
|---|---|---|---|---|
| Router/Firewall | | | | |
| Switch principal | | | | |
| Switch(es) secundarios | | | | |
| Puntos de acceso WiFi | | | | |
| Servidor(es) | | | | |
| NAS/almacenamiento | | | | |

### 2. Análisis del direccionamiento IP

Con autorización, utiliza una herramienta de escaneo de red para obtener un mapa
de los equipos activos. Documenta:

- Rango de red utilizado (ej. 192.168.1.0/24).
- ¿Se usa DHCP o IPs estáticas? ¿En qué equipos?
- ¿Existe segmentación en VLANs? ¿Cuáles y con qué criterio?
- Dirección IP del gateway y de los servidores DNS.
- Rango del pool DHCP y tiempo de concesión.

### 3. Elaboración del esquema de red

Dibuja el esquema de red de la empresa, incluyendo:

- **Esquema físico**: situación de los equipos en el edificio, recorrido del cableado,
  cuartos de comunicaciones, rosetas.
- **Esquema lógico**: topología, segmentos de red, VLANs, direccionamiento IP,
  conexión a Internet y DMZ (si existe).

### 4. Análisis y propuesta de mejoras

Redacta un informe de media página que incluya:

- Puntos fuertes de la infraestructura de red actual.
- Puntos débiles o riesgos identificados (cobertura WiFi deficiente, switches sin gestión, etc.).
- Al menos **2 propuestas de mejora** justificadas técnicamente.

## Documentación a entregar

- Tabla de inventario de equipos de red.
- Tabla de análisis del direccionamiento IP.
- Esquemas físico y lógico de la red.
- Informe de análisis y propuestas de mejora.

## Evaluación

| Criterio | Peso | Descripción |
|---|---|---|
| Inventario de equipos | 25 % | Completo y con datos reales |
| Análisis del direccionamiento | 25 % | Correcto, con todos los parámetros |
| Esquemas de red | 30 % | Claros, completos y correctamente representados |
| Propuestas de mejora | 20 % | Justificadas técnicamente y viables |

## Notas

> Realiza el escaneo de la red siempre con autorización expresa de tu tutor/a de empresa.
> El escaneo de redes sin permiso puede considerarse una actividad no autorizada.
