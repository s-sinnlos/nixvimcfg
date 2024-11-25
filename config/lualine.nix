{
  plugins = {
    web-devicons.enable = true;
    lualine = {
      enable = true;

      settings.options = {
        globalstatus = false;
        always_divide_middle = true;
        component_separators = {
          left = "⁞";
          right = "⁞";
        };
        theme =
          let
            base04 = "#002129";
            base03 = "#002b36";
            base02 = "#073642";
            base01 = "#586e75";
            base00 = "#657b83";
            base0 = "#839496";
            base1 = "#93a1a1";
            base2 = "#eee8d5";
            base3 = "#fdf6e3";
            yellow = "#b58900";
            orange = "#cb4b16";
            red = "#dc322f";
            magenta = "#d33682";
            violet = "#6c71c4";
            blue = "#268bd2";
            cyan = "#2aa198";
            green = "#859900";
          in

          {
            normal = {
              a = {
                fg = blue;
                bg = base04;
                gui = "bold";
              };
              b = {
                fg = base01;
                bg = base03;
              };
              c = {
                fg = base01;
                bg = base02;
              };
              z = {
                fg = base01;
                bg = base04;
              };
            };
            insert = {
              a = {
                fg = green;
                bg = base04;
                gui = "bold";
              };
            };
            visual = {
              a = {
                fg = magenta;
                bg = base04;
                gui = "bold";
              };
            };
            replace = {
              a = {
                fg = red;
                bg = base02;
                gui = "bold";
              };
            };
            inactive = {
              a = {
                fg = base01;
                bg = base03;
                gui = "bold";
              };
              b = {
                fg = base01;
                bg = base02;
              };
              c = {
                fg = base0;
                bg = base01;
              };
            };
          };
      };
    };
  };
}
