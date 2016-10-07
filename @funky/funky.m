classdef funky < file
%% classdef funky
% 
% 
% 
% author: john devitis
% create date: 04-Aug-2016 00:45:52

%% object properties
	properties
        author  % author of function
        header  % header insert
        text    % help text
        out
        in
	end

%% dependent properties
	properties (Dependent)

	end

%% private properties
	properties (Access = private)
	end

%% dynamic methods
	methods
	%% constructor
        function self = funky(fullpath)
            if nargin < 1       % error screen empty input
                fullpath = [];  % empty fullpath input (handled in @file)
            end            
            % call file superclass constructor
            self@file(fullpath);            
            % ensure class extension is for m-file
            self.ext = '.m';
        end
        
        function edit(self)
            % bring current file up in matlab editor
            edit(self.fullname);
        end

	%% dependent methods

    end 

%% static methods
	methods (Static)
	end

%% protected methods
	methods (Access = protected)
%         function fid = open(self,perm)
%         %% open() - open file with error screening capability.
%         % this function is meant to be a catch-all for catching errors (for
%         % lack of a better word) and aid in scalability
%         %
%         % perm = optional permissions, defaults to read only -> perm = 'r';
%         %
%             if nargin < 2 % error screen null perm entry
%                 perm = 'r'; % default to read only
%             end
%             % open file with permissions
%             [fid, errmsg] = fopen(self.fullname,perm);
%             if ~isempty(errmsg)
%                 error(errmsg);
%             end
%         end  
	end

end
