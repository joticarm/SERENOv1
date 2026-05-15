# SERENO - Salud como Servicio (HaaS)

SERENO es una plataforma end-to-end diseñada para que la diáspora dominicana y latinoamericana gestione y pague servicios médicos directos para sus familiares en su país de origen.

## 🚀 Hitos Alcanzados

### Hito 1: Landing Page de Validación (Completado)
- Diseño premium con enfoque en "Paz Mental".
- Tabla de suscripciones (Esencial, Vital, Concierge).
- Monitoreo IoT simulado y Red de Salud Certificada.
- Automatización de correos de bienvenida (Nodemailer + Hostinger).
- Integración con lista de espera (Google Apps Script).

### Hito 2: Dashboard del Emisor (MVP)
- Resumen de servicios activos y estados en tiempo real.
- Módulo de carga de recetas con OCR (Tesseract.js).
- Integración de pagos con Stripe (Checkout Session).

### Hito 3: Telemetría Bluetooth (IoT)
- Panel de monitoreo de signos vitales.
- Gráficos de tendencia históricos (Recharts).
- Conectividad simulada de dispositivos Bluetooth.

## 🛠️ Tecnologías
- **Frontend:** Next.js 14+ (App Router), TypeScript, Vanilla CSS (Modules).
- **Backend:** Next.js API Routes, Nodemailer (Email), Tesseract.js (OCR).
- **Integraciones:** Stripe (Pagos), Google Apps Script (Mailing List), Web Bluetooth API.

## ⚙️ Configuración

1. **Instalación de dependencias:**
   ```bash
   npm install
   ```

2. **Variables de Entorno (.env.local):**
   Configura las siguientes variables:
   - `SMTP_HOST`, `SMTP_PORT`, `SMTP_USER`, `SMTP_PASS` (Para correos).
   - `STRIPE_SECRET_KEY` (Para pagos).

3. **Ejecución:**
   ```bash
   npm run dev
   ```

## 📦 Estructura del Proyecto
- `/src/app`: Rutas y lógica de la aplicación.
- `/src/components`: Componentes modulares (UI).
- `/src/lib`: Utilidades y parsers.

---
Hecho con ❤️ para la comunidad Dominicana.
