fs = 8000;
fs_d = 80000;
t = 0.003;
figure(1);
counter = 1;
for fc = [1, 2, 3, 5, 6, 7]
    subplot(3, 2, counter);
    [ c_n, t_n ] = Q3_1_func( fs, fc*1000, t );
    [ d_n, t_d_n ] = Q3_1_func( fs_d, fc*1000, t );
    plot(t_n, c_n, 'r', t_d_n, d_n, 'b');
    title(['fs = 8KHz(red), 80KHz(blue), fc = ', num2str(fc), 'KHz']);
    counter = counter + 1;
end