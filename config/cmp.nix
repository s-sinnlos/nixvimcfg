{
  plugins = {
    luasnip.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    cmp-buffer.enable = true;

    cmp = {
      enable = true;

      settings = {
        snippet = {
          expand = ''
            function(args)
              require('luasnip').lsp_expand(args.body)
            end
          '';
        };
        completion = {
          completeopt = "menu,menuone,noinsert";
        };
        mapping = {
          # Select the [n]ext item
          "<C-j>" = "cmp.mapping.select_next_item()";
          # Select the [p]revious item
          "<C-k>" = "cmp.mapping.select_prev_item()";
          # Scroll the documentation window [b]ack / [f]orward
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          # Accept ([y]es) the completion.
          #  This will auto-import if your LSP supports it.
          #  This will expand snippets if the LSP sent a snippet.
          "<C-y>" = "cmp.mapping.confirm { select = true }";
          # Traditional completion keymaps,
          "<Tab>" = "cmp.mapping.confirm { select = true }";
          "<CR>" = "cmp.mapping.confirm { select = true }";
          "<Down>" = "cmp.mapping.select_next_item()";
          "<S-Tab>" = "cmp.mapping.select_prev_item()";
          "<Up>" = "cmp.mapping.select_prev_item()";
          "<ESC>" = "cmp.mapping.abort()";

          # Manually trigger a completion from nvim-cmp.
          "<C-Space>" = "cmp.mapping.complete {}";
          # <c-l> move to the next expansion locations.
          "<C-l>" = ''
            cmp.mapping(function()
              if luasnip.expand_or_locally_jumpable() then
                luasnip.expand_or_jump()
              end
            end, { 'i', 's' })
          '';
          # <c-h> move to the prev expansion locations.
          "<C-h>" = ''
            cmp.mapping(function()
              if luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
              end
            end, { 'i', 's' })
          '';
        };
        sources = [
          { name = "luasnip"; }
          # Adds other completion capabilites.
          { name = "nvim_lsp"; }
          { name = "path"; }
          {
            name = "buffer";
            keyword_length = 5;
          }
        ];
      };
    };
  };
}
