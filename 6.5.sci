clc; clear; close;

w = linspace(-%pi, %pi, 1000);

// Tinh Y(w) = X(w) * H(w)
H = 1 + exp(-%i * w);
X = 1 ./ (1 - 0.5 * exp(-%i * w));
Y = X .* H;

mag_Y = abs(Y);                      // Pho bien do |Y(w)|
phase_Y = atan(imag(Y), real(Y));    // Pho pha <Y(w) (rad)

scf(3);
subplot(1, 2, 1);
plot(w, mag_Y, 'b', 'LineWidth', 2);
title('Pho bien do |Y(w)|');
xlabel('Tan so goc w (rad/mau)'); ylabel('|Y(w)|');
xgrid();

subplot(1, 2, 2);
plot(w, phase_Y, 'r', 'LineWidth', 2);
title('Pho pha <Y(w)');
xlabel('Tan so goc w (rad/mau)'); ylabel('Pha (rad)');
xgrid();
