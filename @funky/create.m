function create(self,folder)
%% create(folder) - automate standard function generation 
% removes some boiler plate code 
%
% *notes:*
%
% * originally from classy.create() method, refactored for funky() on
% 08062016
% 
% * object file name used as class name
% * class folder created in self.path and self.ext ignored     
% * does not overwite - appends to end of file if exists

    % error screen null entry
    if nargin < 2     % chk number of inputs
        folder = 1;   % default to making class folder
    end

    if folder == 1 % add folder name for create
        self.path = fullfile(self.path,self.name,[self.name self.ext]);
    end
        
    % open file for appending
    fid = fopen(self.fullname,'a');

    % ---- write contents ----

    % function definition
    fprintf(fid,'function %s()\n', self.name);
    
    % header
    fprintf(fid,'%%%% %s\n', self.name);
    
    % help description
    fprintf(fid,'%% \n');
    fprintf(fid,'%% \n');
    fprintf(fid,'%% \n');
    
    % author
    fprintf(fid,'%% author: %s\n',self.author);
    
    % create date
    fprintf(fid,'%% create date: %s\n\n', char(datetime));
    
    
    % body
    for ii = 1:5
        fprintf(fid,'\t\n')
    end
   
    
    % end line
    fprintf(fid,'end\n');
    % close file
    fclose(fid);            
end       





