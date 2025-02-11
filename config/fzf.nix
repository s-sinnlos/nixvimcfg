{
  plugins.fzf-lua = {
    enable = true;
    settings = {
      files = {
        color_icons = true;
        file_icons = true;
        find_opts = {
          __raw = "[[-type f -not -path '*.git/objects*' -not -path '*.env*']]";
        };
        multiprocess = true;
        #prompt = "Files❯ ";
      };
      winopts = {
        col = 0.20;
        height = 0.85;
        row = 0.90;
        width = 0.90;
        preview = {
          vertical = "up:45%";
          horizontal = "right:60%";
          layout = "flex";
          flip_columns = 120;
          winopts = {
            number = false;
          };
        };
      };
      fzf_opts = {
        "--layout" = "default";
      };
    };
  };
}
