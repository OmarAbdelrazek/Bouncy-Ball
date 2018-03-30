%Bouncy ball is a game consisting of three levels which vary in speed where
%you press space to jump in order to avoid the obstacles untill the max
%score which is 750
%project made by 
%               Omar Abdelrazek 5163

figure('MenuBar','none','Color','white',...
    'Resize','on','name','Bouncy ball','NumberTitle','off','position',[0,0,600,600],...
    'BackingStore','on','keypressfcn',@keypress)
global x y a b x1 x2 t p1 s o;
title(['  Score: ',num2str(s)])
x1=0;
x2=100;
axis([x1 x2 0 100])
hold on
x=10;
y=5;
p1=plot(x,y,'o','MarkerFaceColor','r');
a=0;
load back.mat
imagesc(cdata)
axis off
for o=1:5:100
    a=a+50;
    b=0:1:12;
    p2=plot(a,b,'s','MarkerFaceColor','k');
end
t=0.05;
    
while x<=250
pause(t)
score=title(['  Score: ',num2str(s)]);
x=x+1;
s=x;
delete(p1)
p1=plot(x,y,'o','MarkerFaceColor','r');
x1=x1+1;
x2=x2+1;
axis([x1 x2 0 100])
hold on
if ismember(y,0:1:13)
    if ismember(x,50:50:750)
        s=x;
        x=1000;
        y=1000;
        title('Game over','FontSize',50,'Color','r')
        pause(2)
        title(['  Score: ',num2str(s)])
    end
end
end
t=t/2;
while (x>250)&&(x<=500)
pause(t)
score=title(['  Score: ',num2str(s)]);
x=x+1;
s=x;
delete(p1)
p1=plot(x,y,'o','MarkerFaceColor','r');
x1=x1+1;
x2=x2+1;
axis([x1 x2 0 100])
hold on
if ismember(y,0:1:13)
    if ismember(x,50:50:750)
        s=x;
        x=1000;
        y=1000;
        title('Game over','FontSize',50,'Color','r')
        pause(2)
        title(['  Score: ',num2str(s)])
    end
end
end
t=t/2;
while (x>500)&&(x<=750)
pause(t)
score=title(['  Score: ',num2str(s)]);
x=x+1;
s=x;
delete(p1)
p1=plot(x,y,'o','MarkerFaceColor','r');
x1=x1+1;
x2=x2+1;
axis([x1 x2 0 100])
hold on
if ismember(y,0:1:13)
    if ismember(x,50:50:750)
        s=x;
        x=1000;
        y=1000;
        title('Game over','FontSize',50,'Color','r')
        pause(2)
        title(['  Score: ',num2str(s)])
    end
end
end

    
function keypress(varargin)
%This is the controls setup.
global x y x1 x2 t p1 s
key = get(gcbf,'CurrentKey');
if strcmp(key,'')
elseif strcmp(key,'space')
   if y==5
    while y<=15
   y=y+1;
   x=x+1;
   s=x;
    pause(t)
    delete(p1)
    p1=plot(x,y,'o','MarkerFaceColor','r');
x1=x1+1;
x2=x2+1;
axis([x1 x2 0 100])
hold on
title(['  Score: ',num2str(s)])
if ismember(y,0:1:13)
    if ismember(x,50:50:750)
        s=x;
        x=1000;
        y=1000;
        title('Game over','FontSize',50,'Color','r')
        pause(2)
    end
end
end
while (y<=16) && (y>5)
y=y-1;
    x=x+1;
    s=x;
    pause(t)
    delete(p1)
    p1=plot(x,y,'o','MarkerFaceColor','r');
x1=x1+1;
x2=x2+1;
axis([x1 x2 0 100])
hold on
title(['  Score: ',num2str(s)])
if ismember(y,0:1:13)
    if ismember(x,50:50:750)
        s=x;
        x=1000;
        y=1000;
        title('Game over','FontSize',50,'Color','r')
        pause(2)
    end
end
end
   end
end;
end