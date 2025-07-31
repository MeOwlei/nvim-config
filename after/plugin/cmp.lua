local cmp = require("cmp")

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- Use <Tab> to select next item
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { "i", "s" }),

    -- Use <S-Tab> to select previous item
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { "i", "s" }),

    -- Use <CR> (Enter) to confirm the selection
    ["<CR>"] = cmp.mapping.confirm({ select = true }),

    -- Optional: <C-Space> to manually trigger completion
    ["<C-Space>"] = cmp.mapping.complete(),
  }),
})

