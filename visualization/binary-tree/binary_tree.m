%
%-------------------- Input, output --------------------
% input height of the perfect binary tree
treeHeight = 4;
% input the horizontal nodes of the heap quorum
nodeHorizontalSelected = [4, 5, 11, 12, 6, 7];
% input the vertical nodes of the heap quorum
nodeVerticalSelected = [1, 2, 5, 11, 22];
%--------------------

%-------------------- Global parameters --------------------
% display text beside a node
textoffset = 0.01;
% draw the line
lineOffset = 0.01;
% line width
widthLine = 3;
%--------------------


% compute the number of nodes
treeSize = 2^(treeHeight+1)-1;
% initiatiate the node array
nodeArray = 1:treeSize;
% set the parent of the root
nodeArray(1)=0; % parent == 0, meaning node1 is the root
% set the parent of each non-root node
for i=2:1:treeSize
    nodeArray(i)=floor(i/2);
end

% draw the tree
treeplot(nodeArray,'redo', 'black');
% get the array of coordinates of all nodes
[xAllNodes,yAllNodes] = treelayout(nodeArray);
% display the text of node id beside each node
for i=1:treeSize
    text(xAllNodes(i) + textoffset, yAllNodes(i),num2str(i));
end

% get horizontal nodes
numNodeSelected = length(nodeHorizontalSelected);
% empty the coordinate array
lineX=[]; lineY=[];
for i=1:numNodeSelected
    lineX(i) = xAllNodes(nodeHorizontalSelected(i))+lineOffset;
    lineY(i) = yAllNodes(nodeHorizontalSelected(i));
end
% draw a line linking the horizontal nodes
line(lineX,lineY, 'color', 'blue', 'LineWidth',widthLine);

% get the vertical nodes
numNodeSelected = length(nodeVerticalSelected);
% empty the node array
lineX = []; lineY = [];
for i=1:numNodeSelected
    lineX(i) = xAllNodes(nodeVerticalSelected(i))-lineOffset;
    lineY(i) = yAllNodes(nodeVerticalSelected(i));
end
% draw a line linking the vertical nodes
line(lineX,lineY, 'color', 'red', 'LineWidth',widthLine);


