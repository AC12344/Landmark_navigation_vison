function [sys,x0]=shipanim(t,x,u,flag);

%   Jerome Jouffroy, March 2020
%   updated version with current waypoint visualization

global ShipAnim
 
% ship hull
    Yhull = 0.1*[ 6 ; 6 ; 5 ; 4 ; 3 ; 0 ; -3 ; -4 ; -5 ; -6 ; -6 ];
    Xhull = 0.1*[ -20 ; 20 ; 25 ; 26 ; 27; 28 ; 27 ; 26 ; 25; 20 ; -20 ]; 
    
% cabin
    Ycabin = 0.1*[ 6.5 ; 6.5 ; -6.5 ; -6.5 ];
    Xcabin = 0.1*[ -2 ; 2 ; 2 ; -2 ]-1;
    
% tank 1
    Ytank1 = 0.1*[ 5.5 ; 5.5 ; -5.5 ; -5.5 ];
    Xtank1 = 0.1*[ -6 ; 6 ; 6 ; -6 ];

% tank 2
    Ytank2 = 0.1*[ 5.5 ; 5.5 ; -5.5 ; -5.5 ];
    Xtank2 = 0.1*[ -6 ; 6 ; 6 ; -6 ]+1.3;
    
    
% rudder
    Yrudder = 0.1*[ 0 ; 0 ];
    Xrudder = 0.1*[ -5 ; 0 ];

% waypoint (initialization)
    Xwaypoint = 0;
    Ywaypoint = 0;
    
% circle of acceptance
    Rcircle = 2;
    theta = 0:pi/50:2*pi;
    Xcircle = Rcircle * cos(theta) + Xwaypoint;
    Ycircle = Rcircle * sin(theta) + Ywaypoint;

if flag==2,
    
    %display all hidden hand objects
    shh = get(0,'ShowHiddenHandles');
    set(0,'ShowHiddenHandles','on');
    
    
  if any(get(0,'Children')==ShipAnim),
    if strcmp(get(ShipAnim,'Name'),'Ship docking'),
      set(0,'currentfigure',ShipAnim);
      hndlList=get(gca,'UserData');
      % draw ship hull
      [PosXhull,PosYhull] = rot(Xhull,Yhull,u(3));
      PosXhull = PosXhull + u(1);
      PosYhull = PosYhull + u(2);
      % draw cabin
      [PosXcabin,PosYcabin] = rot(Xcabin,Ycabin,u(3));
      PosXcabin = PosXcabin + u(1);
      PosYcabin = PosYcabin + u(2);
      % draw tank 1
      [PosXtank1,PosYtank1] = rot(Xtank1,Ytank1,u(3));
      PosXtank1 = PosXtank1 + u(1);
      PosYtank1 = PosYtank1 + u(2);
      % draw tank 2
      [PosXtank2,PosYtank2] = rot(Xtank2,Ytank2,u(3));
      PosXtank2 = PosXtank2 + u(1);
      PosYtank2 = PosYtank2 + u(2);
      % draw rudder
      [PosXrudder,PosYrudder] = rot(Xrudder,Yrudder,u(4));
      PosXrudder = PosXrudder-1.4;
      PosYrudder = PosYrudder;
      [PosXrudder,PosYrudder] = rot(PosXrudder,PosYrudder,u(3));
      PosXrudder = PosXrudder + u(1);
      PosYrudder = PosYrudder + u(2);
      Xwaypoint = u(5);
      Ywaypoint = u(6);
      Rcircle = u(7);
      Xcircle = Rcircle * cos(theta) + Xwaypoint;
      Ycircle = Rcircle * sin(theta) + Ywaypoint;
      set(hndlList(1),'XData',PosXhull,'YData',PosYhull);
      set(hndlList(2),'XData',PosXrudder,'YData',PosYrudder);
      set(hndlList(3),'XData',PosXcabin,'YData',PosYcabin);
      set(hndlList(4),'XData',PosXtank1,'YData',PosYtank1);
      set(hndlList(5),'XData',PosXtank2,'YData',PosYtank2);
      set(hndlList(6),'XData',Xwaypoint,'YData',Ywaypoint);
      set(hndlList(7),'XData',Xcircle,'YData',Ycircle);
      drawnow;
    end
  end
  sys=[];
  set(0,'ShowHiddenHandles',shh);    %restore the hidden property
elseif flag==0,
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initialization (flag==0) %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  % Initialize the figure for use with this simulation
   [ShipAnim, Axes] = animinit('Ship docking'); % ANIMINIT Initializes a figure for Simulink animations.

 
   %  This function is OBSOLETE and may be removed in future versions.
    shh = get(0,'ShowHiddenHandles');
  set(0,'ShowHiddenHandles','on');
   figure(ShipAnim);
  
  axis(Axes,2*[-12 12 -12 12], 'on');
  grid on
	% AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes
   %     on the current plot.

  hold(Axes,'on');
	% HOLD ON holds the current plot and all axis properties so that
   %  subsequent graphing commands add to the existing graph.
   
    % Draw the parking spot
  plot(Axes,[-3 3 3 -3 -3]+5,[-1 -1 1 1 -1]+8.5,'black', ...
       'LineWidth',2); 
   
  % Draw the wharf
  plot(Axes,[-10 10],[10 10],'black','LineWidth',2); 
  % Draw the beacon
  plot(0,10,'r.','MarkerSize',25);
	   
  hndlList(1)= fill(Xhull,Yhull,'r','LineWidth',1);
  hndlList(2)= plot(Axes,Xrudder,Yrudder,'k','LineWidth',2);
  hndlList(3)= fill(Xcabin,Ycabin,'y','LineWidth',1);
  hndlList(4)= fill(Xtank1,Ytank1,'g','LineWidth',1);
  hndlList(5)= fill(Xtank2,Ytank2,'g','LineWidth',1);
  hndlList(6)= plot(Xwaypoint,Ywaypoint,'b.','MarkerSize',25);
  hndlList(7)= plot(Axes,Xcircle,Ycircle,'b','LineWidth',1.5);
  set(Axes,'DataAspectRatio',[ 1  1  1 ]);
  set(Axes,'UserData',hndlList);

  sys = [ 0  0  0  7  0  0 ];
  x0 = [];
 set(0,'ShowHiddenHandles',shh);  %restore the hidden property
end
% End of function

% function "rot" that rotates a graphical object
function [PosX,PosY] = rot(X,Y,angle)

dim = size(X,1);

Mrot = [ cos(angle) -sin(angle)  ;
         sin(angle)  cos(angle) ]; 

for i=1:dim
    Pos_i = Mrot * [ X(i,1) ; Y(i,1) ];
    PosX(i,1) = Pos_i(1,1);
    PosY(i,1) = Pos_i(2,1);
end

%%function h = circle(x,y,r)
%%hold on
%%th = 0:pi/50:2*pi;
%%xunit = r * cos(th) + x;
%%yunit = r * sin(th) + y;
%%h = plot(xunit, yunit);
%%hold off