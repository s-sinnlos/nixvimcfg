{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "my-plugin";
      src = pkgs.fetchFromGitHub {
        owner = "ishan9299";
        repo = "nvim-solarized-lua";
        rev = "d69a263c97cbc765ca442d682b3283aefd61d4ac";
        sha256 = "sha256-0NABkr2d86Uq3OU4lbn2dyjRbwE3+5euqh1CA+MwDtQ=";
      };
    })
  ];

  extraConfigLuaPre = ''
    vim.cmd('colorscheme solarized')
    vim.g.solarized_italics = 1
    vim.g.solarized_visibility = 'normal' -- low, nurmal (d), high
    vim.g.solarized_diffmode = 'normal'   -- low, nurmal (d), high
    vim.g.solarized_statusline = 'low'    -- low, flat, normal (d)
  '';
}
