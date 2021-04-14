function Tic_Tac_Toe_UI

global Board;
Board=zeros(3)
dbclear in Tic_Tac_Toe_UI % reset breakpoints in this file
figure('color', 'black','MenuBar','none','Name','Make a Move','Position',[200,300,285,300]); 
%restart button
uicontrol('Style','pushbutton',...
          'string','restart',...
          'Position',[ 115 30 60 63],...
          'Callback',@restart_game);...
%game move buttons
uicontrol('Style', 'pushbutton',...
          'String', 'A1',...
          'Position', [50 225 60 63],...
          'Callback', @brd_playAOne);
           
      
uicontrol('Style', 'pushbutton',...
          'String', 'B1',...
          'Position', [50 160 60 63],...
          'Callback', @brd_playBOne);       

uicontrol('Style', 'pushbutton',...
          'String', 'C1',...
          'Position', [50 95 60 63],...
          'Callback', @brd_playCOne);    

uicontrol('Style', 'pushbutton',...
          'String', 'A2',...
          'Position', [115 225 60 63],...
          'Callback', @brd_playATwo);...
          
      
uicontrol('Style', 'pushbutton',...
          'String', 'B2',...
          'Position', [115 160 60 63],...
          'Callback', @brd_playBTwo);       

uicontrol('Style', 'pushbutton',...
          'String', 'C2',...
          'Position', [115 95 60 63],...
          'Callback', @brd_playCTwo);    

uicontrol('Style', 'pushbutton',...
          'String', 'A3',...
          'Position', [180 225 60 63],...
          'Callback', @brd_playAThree);...
          
      
uicontrol('Style', 'pushbutton',...
          'String', 'B3',...
          'Position', [180 160 60 63],...
          'Callback', @brd_playBThree);       

uicontrol('Style', 'pushbutton',...
          'String', 'C3',...
          'Position', [180 95 60 63],...
          'Callback', @brd_playCThree);    

end

function restart_game(src,event) %restarting game
global Board;
clc;
Board=zeros(3)
end


%the following functions coorespond to the buttons on the UI and change a
%single value on the board matrix

function brd_playAOne(src,event)
global Board;
Board(1,1)=1
win_scan()
end

function brd_playBOne(src,event)
global Board;
Board(2,1)=1
win_scan()
end

function brd_playCOne(src,event)
global Board;
Board(3,1)=1
win_scan()
end

function brd_playATwo(src,event)
global Board;
Board(1,2)=1
win_scan()
end

function brd_playBTwo(src,event)
global Board;
Board(2,2)=1
win_scan()
end

function brd_playCTwo(src,event)
global Board;
Board(3,2)=1
win_scan()
end

function brd_playAThree(src,event)
global Board;
Board(1,3)=1
win_scan()
end

function brd_playBThree(src,event)
global Board;
Board(2,3)=1
win_scan()
end

function brd_playCThree(src,event)
global Board;
Board(3,3)=1
win_scan()
end