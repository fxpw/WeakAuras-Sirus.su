local addonName, Private = ...

local SystemsAPIMixin = Private.SystemsAPIMixin;
local ScriptObjectsAPIMixin = Private.CreateFromMixins(SystemsAPIMixin);
Private.ScriptObjectsAPIMixin = ScriptObjectsAPIMixin;

function ScriptObjectsAPIMixin:GetType()
	return "scriptobject";
end

function ScriptObjectsAPIMixin:GetPrettyType()
	return "script object";
end

local function AddMatchingAPI(apiContainer, matchesContainer, seen, searchString)
	if apiContainer then
		for i, apiInfo in ipairs(apiContainer) do
			local name = apiInfo:GetName();
			if not seen[name] and (not searchString or apiInfo:MatchesSearchString(searchString)) then
				seen[name] = true;
				table.insert(matchesContainer, apiInfo);
			end
		end
	end
end

local function AddScriptObjectAPI(scriptObject, matches, seen, visitedObjects, searchString)
	if visitedObjects[scriptObject:GetName()] then
		return;
	end
	visitedObjects[scriptObject:GetName()] = true;

	AddMatchingAPI(scriptObject.Functions, matches.functions, seen.functions, searchString);
	AddMatchingAPI(scriptObject.Events, matches.events, seen.events, searchString);
	AddMatchingAPI(scriptObject.Tables, matches.tables, seen.tables, searchString);

	if scriptObject.Inherits then
		for i, inheritedObject in ipairs(scriptObject.Inherits) do
			local objectInfo = APIDocumentation:FindAPIByName("scriptobject", inheritedObject);
			if objectInfo then
				AddScriptObjectAPI(objectInfo, matches, seen, visitedObjects, searchString);
			end
		end
	end
end

local function CollectScriptObjectAPI(scriptObject, searchString)
	local matches = {
		functions = {},
		events = {},
		tables = {},
		cvars = {},
	};
	local seen = {
		functions = {},
		events = {},
		tables = {},
	};
	AddScriptObjectAPI(scriptObject, matches, seen, {}, searchString);
	return matches;
end

function ScriptObjectsAPIMixin:FindAllAPIMatches(apiToSearchFor)
	local matches = CollectScriptObjectAPI(self, apiToSearchFor:lower());
	if #matches.functions > 0 or #matches.events > 0 or #matches.tables > 0 then
		return matches;
	end
	return nil;
end

function ScriptObjectsAPIMixin:ListAllAPI()
	return CollectScriptObjectAPI(self);
end

function ScriptObjectsAPIMixin:GetDetailedOutputLines()
	local lines = SystemsAPIMixin.GetDetailedOutputLines(self);

	if self.Inherits and #self.Inherits > 0 then
		local inheritedObjects = {};
		for i, inheritedObject in ipairs(self.Inherits) do
			local objectInfo = APIDocumentation:FindAPIByName("scriptobject", inheritedObject);
			table.insert(inheritedObjects, objectInfo and objectInfo:GenerateAPILink() or inheritedObject);
		end
		table.insert(lines, 2, APIDocumentation:GetIndentString() .. "Inherits: " .. table.concat(inheritedObjects, ", "));
	end

	return lines;
end
