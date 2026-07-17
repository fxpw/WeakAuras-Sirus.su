local addonName, Private = ...

CVarsAPIMixin = Private.CreateFromMixins(BaseAPIMixin);

function CVarsAPIMixin:GetParentName()
	if self.System then
		return self.System:GetName();
	end

	return "";
end

function CVarsAPIMixin:GetType()
	return "cvar";
end

function CVarsAPIMixin:GetPrettyType()
	return "CVar";
end

function CVarsAPIMixin:GetLinkHexColor()
	return "ffaa55";
end

function CVarsAPIMixin:MatchesSearchString(searchString)
	if self:GetLoweredName():match(searchString) then
		return true;
	end

	if self.Category and self.Category:lower():match(searchString) then
		return true;
	end

	return self:MatchesAnyDocumentation(searchString);
end

function CVarsAPIMixin:GetDetailedOutputLines()
	local lines = {};
	table.insert(lines, self:GetSingleOutputLine());

	self:AddSystemTag(lines);
	self:AddDocumentationTags(lines);

	if self.DefaultValue ~= nil then
		table.insert(lines, APIDocumentation:GetIndentString() .. "Default Value: " .. tostring(self.DefaultValue));
	end

	if self.Category then
		table.insert(lines, APIDocumentation:GetIndentString() .. "Category: " .. self.Category);
	end

	return lines;
end
