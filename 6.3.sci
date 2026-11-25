clc; clear; close;

// Khai báo vector tần số góc omega trong khoảng [-pi, pi]
w = linspace(-%pi, %pi, 1000);

// --- Câu a: x1(n) = 0.1^n * u(n) ---
X1 = 1 ./ (1 - 0.1 * exp(-%i * w));
mag_X1 = abs(X1);                        // Phổ biên độ |X1(w)|
phase_X1 = atan(imag(X1), real(X1));     // Phổ pha <X1(w) (rad)

// --- Câu b: x2(n) = delta(n) + delta(n-1) + delta(n-2) + delta(n-3) ---
X2 = 1 + exp(-%i * w) + exp(-%i * 2 * w) + exp(-%i * 3 * w);
mag_X2 = abs(X2);                        // Phổ biên độ |X2(w)|
phase_X2 = atan(imag(X2), real(X2));     // Phổ pha <X2(w) (rad)

// --- Vẽ đồ thị ---
scf(0);
// Đồ thị x1(n)
subplot(2, 2, 1);
plot(w, mag_X1, 'b', 'LineWidth', 2);
title('Pho bien do |X1(w)|');
xlabel('Tan so goc w (rad/mau)'); ylabel('|X1(w)|');
xgrid();

subplot(2, 2, 2);
plot(w, phase_X1, 'r', 'LineWidth', 2);
title('Pho pha <X1(w)');
xlabel('Tan so goc w (rad/mau)'); ylabel('Pha (rad)');
xgrid();

// Đồ thị x2(n)
subplot(2, 2, 3);
plot(w, mag_X2, 'b', 'LineWidth', 2);
title('Pho bien do |X2(w)|');
xlabel('Tan so goc w (rad/mau)'); ylabel('|X2(w)|');
xgrid();

subplot(2, 2, 4);
plot(w, phase_X2, 'r', 'LineWidth', 2);
title('Pho pha <X2(w)');
xlabel('Tan so goc w (rad/mau)'); ylabel('Pha (rad)');
xgrid();
