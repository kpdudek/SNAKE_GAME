classdef Snake_Class
    properties (Access = public)
        x  %current position
        y  %current position
        x1  %next position
        y1  %next position
        x2  %last postion
        y2  %last position
        x_vel
        y_vel
        avail  %available locations to move, r,l,u,d
        board = 25; %Board size
        game_board  %Matrix with snake positions
        game  %Figure window
        fig  %axes to plot matrix on
        top_bar  %text box at top for welcome
        col = [0,0,0;1,1,1];  %color map
    end
    
    methods
        function obj = Snake_Class()
            fprintf('Loading...\n')
            obj.x = 0;
            obj.y = 0;
            obj.x1 = 0;
            obj.y1 = 0;
            obj.x2 = 0;
            obj.y2 = 0;
            obj.game = figure('Visible','off','Name','Snake Game','Position',[0 0 1920 1050],'MenuBar','none','ToolBar','none');
            obj.fig = axes(obj.game,'Units','Normalized','Position',[.25 .15 .5 .5]);
            obj.game_board = ones(obj.board);
            set(obj.game,'ColorMap',obj.col);
            image(obj.fig,obj.game_board);
            pause(1)
            set(obj.game,'Visible','on');
            fprintf('\nRunning...\n')
        end
        function obj = welcome(obj)
            obj.top_bar = uicontrol(obj.game,'Style','text','String','Welcome','Units','Normalized','Position',[.2 .7 .6 .15],'ForegroundColor','k','FontSize',40);
        end
        function obj = first_move(obj)
            obj.x = randi([1,obj.board]);
            obj.y = randi([1,obj.board]);
            obj.x2 = obj.x;
            obj.y2 = obj.y;
            obj.game_board(obj.x,obj.y) = 2;
            image(obj.game_board)
            pause(.5)
        end
        function obj = get_vel(obj)
            obj.x_vel = obj.x - obj.x2;
            obj.y_vel = obj.y - obj.y2;
        end
        function obj = check_avail(obj)
            run = {};
            if obj.x + 1 > 0 && obj.game_board(obj.x+1,obj.y) == 1
                run{end+1} = 'r';
            elseif obj.x - 1 > 0 && obj.game_board(obj.x-1,obj.y) == 1
                run{end+1} = 'l';
            elseif obj.y + 1 > 0 && obj.game_board(obj.x,obj.y+1) == 1
                run{end+1} = 'd';
            elseif obj.y - 1 > 0 && obj.game_board(obj.x,obj.y-1) == 1
                run{end+1} = 'u';
            end
            obj.avail = run;
        end
        function obj = play_game(obj)
            move = obj.avail{1};
        end
    end
end


%         function obj = move_left(obj)
%             obj.x1 = obj.x;
%             obj.y1 = obj.y-1;
%             obj.x = obj.x1;
%             obj.y = obj.y1;
%             obj.game_board(obj.x1,obj.y1) = 2;
%             image(obj.game_board)
%             pause(.2)
%         end
%         function obj = move_right(obj)
%             obj.x1 = obj.x;
%             obj.y1 = obj.y+1;
%             obj.x = obj.x1;
%             obj.y = obj.y1;
%             obj.game_board(obj.x1,obj.y1) = 2;
%             image(obj.game_board)
%             pause(.2)
%         end
%         function obj = move_up(obj)
%             obj.x1 = obj.x-1;
%             obj.y1 = obj.y;
%             obj.x = obj.x1;
%             obj.y = obj.y1;
%             obj.game_board(obj.x1,obj.y1) = 2;
%             image(obj.game_board)
%             pause(.2)
%         end
%         function obj = move_down(obj)
%             obj.x1 = obj.x+1;
%             obj.y1 = obj.y;
%             obj.x = obj.x1;
%             obj.y = obj.y1;
%             obj.game_board(obj.x1,obj.y1) = 2;
%             image(obj.game_board)
%             pause(.2)
%         end










% if ((obj.x - 1) > 0) && (obj.game_board(obj.x-1,obj.y) == 1 )
%                 obj.x1 = obj.x-1;
%                 obj.y1 = obj.y;
%                 obj.x = obj.x1;
%                 obj.y = obj.y1;
%                 obj.game_board(obj.x1,obj.y1) = 2;
%                 image(obj.game_board)
%                 pause(.2)
%             elseif ((obj.x + 1) > 1) && (obj.game_board(obj.x+1,obj.y) == 1 )
%                 obj.x1 = obj.x+1;
%                 obj.y1 = obj.y;
%                 obj.x = obj.x1;
%                 obj.y = obj.y1;
%                 obj.game_board(obj.x1,obj.y1) = 2;
%                 image(obj.game_board)
%                 pause(.2)
%             elseif ((obj.y - 1) > 1) && (obj.game_board(obj.x,obj.y - 1) == 1 )
%                 obj.x1 = obj.x;
%                 obj.y1 = obj.y-1;
%                 obj.x = obj.x1;
%                 obj.y = obj.y1;
%                 obj.game_board(obj.x1,obj.y1) = 2;
%                 image(obj.game_board)
%                 pause(.2)
%             elseif ((obj.y + 1) > 1) && (obj.game_board(obj.x,obj.y + 1) == 1 )
%                 obj.x1 = obj.x;
%                 obj.y1 = obj.y+1;
%                 obj.x = obj.x1;
%                 obj.y = obj.y1;
%                 obj.game_board(obj.x1,obj.y1) = 2;
%                 image(obj.game_board)
%                 pause(.2)














%
% if obj.x_vel > 0
%                 if obj.x+1 > 0 && obj.game_board(obj.x+1,obj.y) == 1
%                     %obj.x1 = obj.x + 1;
%                     %obj.y1 = obj.y;
%                     %obj.x2 = obj.x;
%                     %obj.y2 = obj.y;
%                     %obj.x = obj.x1;
%                     %obj.y = obj.y1;
%                     obj.move = 'r';
%                 end
%             elseif obj.x_vel < 0
%
%             elseif obj.y_vel > 0
%
%             else %obj.y_vel < 0
%
%             end