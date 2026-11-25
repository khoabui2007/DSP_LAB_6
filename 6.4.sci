clc; clear; close;

// Khai bao dai tan so goc w trong [-pi, pi]
w = linspace(-%pi, %pi, 1000);

// Dap ung tan so H(w) = 1 / (1 + 0.1*e^(-jw) + 0.2*e^(-j2w))
H = 1 ./ (1 + 0.1 * exp(-%i * w) + 0.2 * exp(-%i * 2 * w));

mag_H = abs(H);                      // Pho bien do |H(w)|
phase_H = atan(imag(H), real(H));    // Pho pha <H(w) (rad)

scf(2);
subplot(1, 2, 1);
plot(w, mag_H, 'b', 'LineWidth', 2);
title('Pho bien do |H(w)|');
xlabel('Tan so goc w (rad/mau)'); ylabel('|H(w)|');
xgrid();

subplot(1, 2, 2);
plot(w, phase_H, 'r', 'LineWidth', 2);
title('Pho pha <H(w)');
xlabel('Tan so goc w (rad/mau)'); ylabel('Pha (rad)');
xgrid();
