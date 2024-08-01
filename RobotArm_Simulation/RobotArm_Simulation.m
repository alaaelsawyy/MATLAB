classdef Robotarm1 < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure               matlab.ui.Figure
        Length1EditField       matlab.ui.control.NumericEditField
        Length1EditFieldLabel  matlab.ui.control.Label
        Length2EditField       matlab.ui.control.NumericEditField
        Length2EditFieldLabel  matlab.ui.control.Label
        Switch                 matlab.ui.control.Switch
        StartButton            matlab.ui.control.Button
        UIAxes                 matlab.ui.control.UIAxes
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: StartButton
        function StartButtonPushed(app, event)
hold(app.UIAxes,'off')     % Turn off hold to clear the axes before plotting
Arm1_Length =app.Length1EditField.Value;   % Get the length of the first arm from the UI
Arm2_Length =app.Length2EditField.Value;   % Get the length of the second arm from the UI

Theta1 = linspace(0,90,1000);    % Create an array of angles for the first arm
Theta2 =linspace(0,180,1000);    % Create an array of angles for the second arm

X1 = Arm1_Length * cosd(Theta1);     % Calculate x-coordinates for the first arm
Y1 = Arm1_Length * sind(Theta1);     % Calculate y-coordinates for the first arm
X2 = X1 + Arm2_Length * cosd(Theta1 + Theta2);    % Calculate x-coordinates for the second arm
Y2 = Y1 + Arm2_Length * sind(Theta1 + Theta2);    % Calculate y-coordinates for the second arm

p1 = plot(app.UIAxes,[0,X1(1)],[0,Y1(1)]);         % Plot the initial position of the first arm
hold(app.UIAxes,'on')    % Turn on hold to allow multiple plots on the same axes
p2 = plot(app.UIAxes,[X1(1),X2(1)],[Y1(1),Y2(1)]); % Plot the initial position of the second arm

hold on
xlim(app.UIAxes,[-Arm1_Length * 2,  Arm1_Length * 2]);
ylim(app.UIAxes,[-Arm1_Length * 2,  Arm1_Length * 2]);

for i=1:8:length(Theta1)

delete(p1);
delete(p2);

p1 = plot(app.UIAxes,[0,X1(i)],[0,Y1(i)],'LineWidth',5,'color','b','Marker','hexagram');
p2 = plot(app.UIAxes,[X1(i),X2(i)],[Y1(i),Y2(i)],'LineWidth',5,'color','c','Marker','hexagram');
drawnow    % Update the plot immediately
end


        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0.651 0.651 0.651];
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create UIAxes
            app.UIAxes = uiaxes(app.UIFigure);
            title(app.UIAxes, 'Robot Arm Motion Simulation')
            xlabel(app.UIAxes, 'X-axis')
            ylabel(app.UIAxes, 'Y-axis')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.FontName = 'Georgia';
            app.UIAxes.XLim = [0 10];
            app.UIAxes.YLim = [0 10];
            app.UIAxes.ZLim = [0 10];
            app.UIAxes.XColor = [0 0 0];
            app.UIAxes.YColor = [0.149 0.149 0.149];
            app.UIAxes.ZColor = [0 0 0];
            app.UIAxes.Color = [0 0 0];
            app.UIAxes.GridColor = [1 1 1];
            app.UIAxes.MinorGridColor = [1 1 1];
            app.UIAxes.Box = 'on';
            app.UIAxes.XGrid = 'on';
            app.UIAxes.YGrid = 'on';
            app.UIAxes.ZGrid = 'on';
            app.UIAxes.FontSize = 12;
            colormap(app.UIAxes, 'gray')
            app.UIAxes.Position = [30 68 565 394];

            % Create StartButton
            app.StartButton = uibutton(app.UIFigure, 'push');
            app.StartButton.ButtonPushedFcn = createCallbackFcn(app, @StartButtonPushed, true);
            app.StartButton.BackgroundColor = [0.902 0.902 0.902];
            app.StartButton.FontName = 'Georgia';
            app.StartButton.Position = [100 18 100 23];
            app.StartButton.Text = 'Start';

            % Create Switch
            app.Switch = uiswitch(app.UIFigure, 'slider');
            app.Switch.Orientation = 'vertical';
            app.Switch.Position = [30 50 20 45];

            % Create Length2EditFieldLabel
            app.Length2EditFieldLabel = uilabel(app.UIFigure);
            app.Length2EditFieldLabel.BackgroundColor = [0.902 0.902 0.902];
            app.Length2EditFieldLabel.HorizontalAlignment = 'right';
            app.Length2EditFieldLabel.FontName = 'Georgia';
            app.Length2EditFieldLabel.Position = [454 19 52 22];
            app.Length2EditFieldLabel.Text = 'Length 2';

            % Create Length2EditField
            app.Length2EditField = uieditfield(app.UIFigure, 'numeric');
            app.Length2EditField.Limits = [0 20];
            app.Length2EditField.HorizontalAlignment = 'center';
            app.Length2EditField.FontName = 'Georgia';
            app.Length2EditField.BackgroundColor = [0.902 0.902 0.902];
            app.Length2EditField.Position = [521 19 100 22];
            app.Length2EditField.Value = 5;

            % Create Length1EditFieldLabel
            app.Length1EditFieldLabel = uilabel(app.UIFigure);
            app.Length1EditFieldLabel.BackgroundColor = [0.902 0.902 0.902];
            app.Length1EditFieldLabel.HorizontalAlignment = 'right';
            app.Length1EditFieldLabel.FontName = 'Georgia';
            app.Length1EditFieldLabel.Position = [244 19 50 22];
            app.Length1EditFieldLabel.Text = 'Length 1';

            % Create Length1EditField
            app.Length1EditField = uieditfield(app.UIFigure, 'numeric');
            app.Length1EditField.Limits = [0 20];
            app.Length1EditField.HorizontalAlignment = 'center';
            app.Length1EditField.FontName = 'Georgia';
            app.Length1EditField.BackgroundColor = [0.902 0.902 0.902];
            app.Length1EditField.Position = [305 19 100 22];
            app.Length1EditField.Value = 5;

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Robotarm1

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end