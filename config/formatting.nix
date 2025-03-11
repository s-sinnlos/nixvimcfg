{ pkgs, lib, ... }:
{
  # formatter packages
  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = true;
      formatters_by_ft = {
        lua = [ "stylua" ];
        python = [
          "ruff_format"
          "ruff_organize_imports"
        ];
        nix = [ "nixfmt" ];
        sh = [
          "shellcheck"
          "shellharden"
          "shfmt"
        ];
        json = [ "jq" ];
        "_" = [
          "squeeze_blanks"
          "trim_whitespace"
          "trim_newlines"
        ];
        toml = [ "taplo" ]; # toml

      };
      formatters = {
        shellcheck = {
          command = lib.getExe pkgs.shellcheck;
        };
        shfmt = {
          command = lib.getExe pkgs.shfmt;
          prepend_args = [
            "-i"
            "2"
          ];
        };
        shellharden.command = lib.getExe pkgs.shellharden;
        squeeze_blanks.command = lib.getExe' pkgs.coreutils "cat";
        stylua.command = lib.getExe pkgs.stylua;
        nixfmt.command = lib.getExe pkgs.nixfmt-rfc-style;
        ruff_format.command = lib.getExe pkgs.ruff;
        ruff_organize_imports.command = lib.getExe pkgs.ruff;
        jq.command = lib.getExe pkgs.jq;
        taplo.command = lib.getExe pkgs.taplo;
      };
    };
  };
  keymaps = [
    {
      mode = "";
      key = "<space>f";
      action.__raw = ''
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end
      '';
      options = {
        desc = "Format buffer";
      };
    }
  ];
}
