{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      #ansiblels.enable = true; # Ansible
      bashls.enable = true; # Bash
      #clangd.enable = true; # C/C++
      html.enable = true; # html
      jsonls.enable = true; # JSON
      lua_ls = {
        # lua
        enable = true;
        settings = {
          Lua = {
            diagnostics = {
              # Get the language server to recognize the "vim" global
              globals = "{ 'vim' }";
            };
            workspace = {
              # Make the server aware of Neovim runtime files
              library = "vim.api.nvim_get_runtime_file('', true)";
            };
            # Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
              enable = false;
            };
            format = {
              enable = true;
              # Put format options here
              # NOTE: the value should be STRING!!
              defaultConfig = {
                indent_style = "space";
                indent_size = "2";
              };
            };
          };
        };
      };
      marksman.enable = true; # Markdown
      nil_ls.enable = true; # Nix
      pylsp = {
        enable = true;
        settings = {
          pyright = {
            # Using ruff's import organizer
            disableOrganinzeImports = true;
          };
          python = {
            # Ignore all files for analysis to exclusively use Ruff for linting
            analysis = {
              ignore = "{'*'}";
            };
          };
        };
      };
      ruff.enable = true; # Python
      yamlls.enable = true; # YAML
    };

    # Keymaps
    keymaps = {
      lspBuf = {
        "K" = {
          mode = "n";
          action = "hover";
          desc = "[LSP] Show hover information";
        };
        "gd" = {
          mode = "n";
          action = "definition";
          desc = "[LSP] Go to definition";
        };
        "gD" = {
          mode = "n";
          action = "declaration";
          desc = "[LSP] Go to declaration";
        };
        "gi" = {
          mode = "n";
          action = "implementation";
          desc = "[LSP] List all implementations";
        };
        "gt" = {
          mode = "n";
          action = "type_definition";
          desc = "[LSP] Go to type definition";
        };
        "gr" = {
          mode = "n";
          action = "references";
          desc = "[LSP] List all references";
        };
        "<C-k>" = {
          mode = "n";
          action = "signature_help";
          desc = "[LSP] Show function signature help";
        };
        "rn" = {
          mode = "n";
          action = "rename";
          desc = "[LSP] Rename all refences";
        };
        #"ca" = {
        #  action = "range_code_action";
        #  desc = "[LSP] Select code action";
        #};
      };

      diagnostic = {
        "öd" = {
          mode = "n";
          action = "goto_prev";
          desc = "[LSP] Go to previous diagnostic";
        };
        "äd" = {
          mode = "n";
          action = "goto_next";
          desc = "[LSP] Go to next diagnostic";
        };
      };

    };
  };
}
