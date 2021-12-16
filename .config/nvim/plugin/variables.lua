-- Quick/essential variables which must be loaded immediately.
raoulduke.variables.eager()

-- Slow/nice-to-have variables which can be loaded when idle.
vim.defer_fn(raoulduke.variables.idle, 0)
