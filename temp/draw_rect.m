
i=5;

rectangle('Position',[1,1,5,5])

text(3,3,num2str(i));

hold on

quiver(1,2,3,3,'r','filled','LineWidth',2);
quiver(2,2,3,3);


axis([0 10 0 10])

% m = 8;
% n = 10;
% A = reshape(linspace(0, 2*pi, n*m), [n m]).';
%  
% w = 1 / n;
% h = 1 / m;
% clf
% for i = 1 : m
%     for j = 1 : n
%         pos = [(j-1)*w (m-i)*h w h];
%         ax = axes('Units', 'normal', 'Pos', pos);
%         t = A(i, j);
%         %plot([cos(pi+t) cos(t)], [sin(pi+t) sin(t)])
%         plot([0 cos(t)], [0 sin(t)])
%         set(ax, 'XTick', [], 'YTick', [], 'XLim', [-1 1], 'YLim', [-1 1])
%     end
% end


% m = 5; n = 6;
% A = rand(m, n); 
% colnum = size(A,2);
%  
% figure
% for j = 1:colnum
%      plot(A(:,j));
%      hold on
% end