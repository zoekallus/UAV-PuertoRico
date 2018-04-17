%% Main Script for Puerto Rico UAV Disaster Response Fleet 
clear all; close all; format long;

%% SIMULATION PARAMETERS
speed(1,1)=50;  %% slower UAV speed 
speed(2,1)=100; %% faster UAV speed 

%% Create Map
figure
MAP=imread('PuertoRico.png'); image(MAP); axis=[0 900 100 450]; hold on;  
rect=[150 200 400 150];
%% Create new UAV fleet 
clear PRfleet;
PRFleet=fleetManager; %% manages Puerto Rico UAV fleet
PRFleet.map='PuertoRico.png'; %% UAV Fleet is deployed to Puerto Rico
PRFleet.numUAVS=2;       %%Size of UAV fleet

%% Specify Base Locations
PRFleet.base(1,1)=700; PRFleet.base(1,2)=150;  %Base 1 
PRFleet.base(2,1)=100; PRFleet.base(2,2)=300;  %Base 2 

for i=1:PRFleet.numUAVS
%% Assign UAV to bases 
 PRFleet.UAV(i,1).ID=i; %% Create UAV
 PRFleet.UAV(i,1).x=PRFleet.base(i,1); %%  position each UAV at a base 
 PRFleet.UAV(i,1).y=PRFleet.base(i,2); %% 
 %% Assign UAV speeds
 PRFleet.UAV(i,1).speed=speed(i,1); 
end

%% Plot Bases and UAV positions
for ID=1:PRFleet.numUAVS
 PRFleet.plotBaseLocation(ID); %%first way to call a class method
 hold on;
 plotUAVLocation(PRFleet,ID);  %%econd way to call a class method
 hold on;
 end


