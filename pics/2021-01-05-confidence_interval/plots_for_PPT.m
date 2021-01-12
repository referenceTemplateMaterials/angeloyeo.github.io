clear; close all; clc;

% rng(4)
% data = round(randn(1,150)* 2 + 15);
load('data.mat')

%%
close all;
k_data = unique(data);
my_order = [];

for i_data = 1:length(k_data)
    idx = data == k_data(i_data);
    for i_idx = 1:sum(idx)
        my_order = [my_order, i_idx];
    end
end

mksize = 8;
fsize= 12;

k_data = unique(data);

for i_data = 1:length(k_data)
    idx = data == k_data(i_data);
    
    for i_idx = 1:sum(idx)
        plot(k_data(i_data), i_idx,'o','markersize',mksize,'markerfacecolor',ones(1,3) * 0.5, 'markeredgecolor','none');
        hold on;
    end
end

rng(3)
samples2choose = randperm(150,20);

data_sort = sort(data);

plot(data_sort(samples2choose), my_order(samples2choose),'o','markersize',mksize,'markerfacecolor','r',...
    'markeredgecolor','none');

xlim([8 22])
ylim([0, 40])
grid on;
xlabel('height(cm)');
ylabel('count');
title('150�� �� 20�� sample ����');
text(9.5, 22, ['SAMPLE n = ',num2str(length(samples2choose))],'fontsize',fsize)
set(gca,'fontsize',fsize);

%% ǥ�� ����
close all;
mksize = 8;
fsize= 12;

figure('position',[680, 738, 350, 240])
data2plot = data_sort(samples2choose);
k_data = unique(data2plot);
for i_data = 1:length(k_data)
    idx = data2plot == k_data(i_data);
    
    for i_idx = 1:sum(idx)
        plot(k_data(i_data), i_idx,'o','markersize',mksize,'markerfacecolor','r', 'markeredgecolor','none');
        hold on;
    end
end
ylim([0.5, 9]);
xlim([8, 22]);
xlabel('height(cm)');
ylabel('count');
grid on;

% ��հ� �׷��ֱ�
plot(mean(data2plot),8,'o','MarkerFaceColor','r', 'markersize', mksize/1.5,'MarkerEdgeColor','none');

% std �׷��ֱ�
plot([mean(data2plot) - 2 * std(data2plot)/sqrt(6), mean(data2plot) + 2 * std(data2plot)/sqrt(6)], [8, 8], 'color', 'r','linewidth',2);
%     set(gca,'fontsize',fsize);
% title([num2str(i_smpl),'��° ǥ�� �׷�']);


%% Fig. 100�� ���ø� ���� �� ������� �� �� ��������
rng(3)
n_sample = 20;
n_iter = 100;
SEM = zeros(1, n_iter);
mns = zeros(1, n_iter);
for i_smpl = 1:n_iter
    n_randperm = randperm(150);
    
    data_sampled = data(n_randperm(1:n_sample));
    
    mns(i_smpl) = mean(data_sampled);
    SEM(i_smpl) = std(data_sampled)/sqrt(n_sample);
end

figure('position',[680, 550, 1200, 420]);
hold on;
count = 0;
for i = 1:n_iter
    
    line([i i], [mns(i) - 2* SEM(i), mns(i) + 2 * SEM(i)], 'color','k','linewidth',2)
    plot(i, mns(i), 'o', 'markerfacecolor',[0.8, 0.8, 0.8],'markeredgecolor','k');
    if ((mns(i) - 2*SEM(i)) > mean(data)) || ((mns(i) + 2*SEM(i)) < mean(data))
        
        line([i i], [mns(i) - 2* SEM(i), mns(i) + 2 * SEM(i)], 'color','r','linewidth',2)
        plot(i, mns(i), 'o', 'markerfacecolor','r','markeredgecolor','k');
        count = count + 1;
    end
end
line([1, n_iter], ones(1, 2) * mean(data), 'color', 'r', 'linestyle', '--','linewidth',2)

ylim([12, 18])
% disp(num2str(count))
grid on;
xlabel('�ݺ� ���� Ƚ��');
ylabel('��հ�');

%% ���Ժ��� line�� �׷��ֱ�

mu = mean(data);
sigma = std(data);

pd = makedist('Normal', 'mu', mu, 'sigma', sigma);

x = linspace(mu - 3 * sigma, mu + 3 * sigma, 100);
y = pdf(pd, x);
figure;
plot(x, y, 'color','k','linewidth',2)
set(gca,'visible','off')