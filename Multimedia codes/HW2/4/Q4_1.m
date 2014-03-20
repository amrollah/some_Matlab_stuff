[y, t] = beat_note_generator();

figure(1);
subplot(1,1,1);
plot(t, y);
title('Beat-note');

soundsc(y);