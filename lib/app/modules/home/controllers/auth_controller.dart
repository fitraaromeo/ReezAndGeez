import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  // Observables
  var isLoggedIn = false.obs; // Status login
  var isLoading = false.obs; // Status loading untuk UI
  var user = Rxn<User?>(); // Data pengguna Firebase, bisa null

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Fungsi untuk login menggunakan email dan password
  Future<void> login(String email, String password) async {
    isLoading.value = true; // Mulai loading
    try {
      // Melakukan login
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Mengatur user dan status login
      user.value = userCredential.user;
      isLoggedIn.value = true;

      // Menampilkan pesan sukses
      _showSnackbar(
        title: 'Login Sukses',
        message: 'Selamat datang ${user.value?.email ?? "Pengguna"}',
      );

      // Navigasi ke halaman admin
      Get.offAllNamed('/adminpage');
    } on FirebaseAuthException catch (e) {
      // Menampilkan pesan error dari Firebase
      _showSnackbar(
        title: 'Login Gagal',
        message: e.message ?? 'Terjadi kesalahan saat login.',
      );
    } catch (e) {
      // Menampilkan pesan error umum
      _showSnackbar(
        title: 'Error',
        message: 'Terjadi kesalahan tidak terduga. Silakan coba lagi.',
      );
      print('Login Error: $e');
    } finally {
      isLoading.value = false; // Selesai loading
    }
  }

  // Fungsi untuk logout
  Future<void> logout() async {
    isLoading.value = true; // Mulai loading
    try {
      await _auth.signOut();
      user.value = null;
      isLoggedIn.value = false;

      // Menampilkan pesan sukses
      _showSnackbar(
        title: 'Logout Sukses',
        message: 'Anda berhasil keluar dari aplikasi.',
      );

      // Navigasi ke halaman login
      Get.offAllNamed('/login');
    } catch (e) {
      // Menampilkan pesan error
      _showSnackbar(
        title: 'Error',
        message: 'Terjadi kesalahan saat logout. Silakan coba lagi.',
      );
      print('Logout Error: $e');
    } finally {
      isLoading.value = false; // Selesai loading
    }
  }

  // Mendengarkan perubahan status autentikasi
  @override
  void onInit() {
    super.onInit();
    _auth.authStateChanges().listen((User? firebaseUser) {
      if (firebaseUser != null) {
        user.value = firebaseUser;
        isLoggedIn.value = true;
      } else {
        user.value = null;
        isLoggedIn.value = false;
      }
    });
  }

  // Fungsi untuk menampilkan snackbar
  void _showSnackbar({required String title, required String message}) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 3),
    );
  }
}
