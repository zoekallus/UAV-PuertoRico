classdef fleetManager  %%manages all UAVs
    properties
        map   %% ontains map file of response regiob
        numUAVS  %% number of UAVs in the fleet
        base     %% (i,1)=x coord   (i,2)= y coord   
        UAV      %% ID; speed; x; y; 
      end
    
    methods
        function  plotBaseLocation(obj,ID)     
           text(obj.base(ID,1),obj.base(ID,2),strcat('[  ]BASE',num2str(ID)),'color','blue','FontSize',20);
        end   
               
        function plotUAVLocation(obj,ID)     
                text(obj.UAV(ID,1).x,obj.UAV(ID,1).y,strcat('  x',num2str(ID)),'color','red','FontSize',10);
        end               
    end
end
 