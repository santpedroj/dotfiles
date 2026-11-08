for i = 1, 4 do
	hl.workspace_rule({
		workspace = tostring(i),
		persistent = true,
		default = (i == 1),
	})
end

--hl.workspace_rule({
--	workspace = "special:term",
--	gaps_out = 100,
--	persistent = false,
--	on_created_empty = "kitty",
--})

hl.bind("SUPER + apostrophe", hl.dsp.workspace.toggle_special("term"))
