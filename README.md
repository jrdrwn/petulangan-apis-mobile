# Petualangan IPAS

Aplikasi Petualangan IPAS adalah sebuah aplikasi mobile yang dirancang untuk memberikan pengalaman bermain yang menyenangkan dan edukatif bagi para pemain. Aplikasi ini dikembangkan menggunakan framework Flutter, sehingga dapat dijalankan di berbagai platform. Dalam aplikasi ini, pemain akan diajak untuk menjelajahi berbagai petualangan seru yang penuh dengan tantangan dan kejutan. Dengan antarmuka yang menarik dan mudah digunakan, Petualangan IPAS menawarkan pengalaman bermain yang menyenangkan bagi semua kalangan.

## Tutorial Setup & Build di Android

### 1. Persiapan Lingkungan
- Install [Git](https://git-scm.com/downloads) (untuk clone repository)
- Install [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Install [Android Studio](https://developer.android.com/studio) (beserta Android SDK & emulator/device)
- Install Java Development Kit (JDK) 8 atau lebih baru (versi 21+ disarankan). Download JDK 21 di [sini](https://www.oracle.com/java/technologies/javase/jdk21-archive-downloads.html)
- Tambahkan Flutter ke PATH environment variable

### 2. Clone/Download Project
- Buka terminal/command prompt
- Clone repository ini:
  ```
  git clone https://github.com/jrdrwn/petulangan-apis-mobile
  cd petulangan-apis-mobile
  ```
- Atau jika sudah punya folder project, arahkan ke folder project:
  ```
  cd d:\project\petulangan-apis-mobile
  ```

### 3. Install Dependencies
- Jalankan:
  ```
  flutter pub get
  ```

### 4. Konfigurasi Android
- Buka project di Android Studio
- Pastikan device/emulator Android sudah aktif

### 5. Build & Run di Android
- Untuk menjalankan di device/emulator:
  ```
  flutter run
  ```
- Untuk build APK release:
  ```
  flutter build apk --release
  ```
  Hasil APK: `build/app/outputs/flutter-apk/app-release.apk`

### 6. Troubleshooting
- Jika ada error, pastikan:
  - Semua dependency sudah terinstall
  - Device/emulator terdeteksi (`flutter devices`)
  - Cek konfigurasi di `android/app/build.gradle` & `android/local.properties`
