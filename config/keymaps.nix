{
  globals.mapleader = ",";

  keymaps = [
    # Global
    # Default mode is "" which means normal-visual-op
    # Normal mode
    {
      mode = "i";
      key = "jk";
      action = "<CMD>noh<CR><ESC>";
      options.desc = "Normal mode and clear highlight";
    }
    {
      mode = "i";
      key = "<ESC>";
      action = "<CMD>noh<CR><ESC>";
      options.desc = "Normal mode and clear highlight";
    }
    {
      mode = "n";
      key = "<ESC>";
      action = "<CMD>noh<CR><ESC>";
      options.desc = "Normal mode and clear highlight";
    }
    # Toggle numbers
    {
      key = "<leader>n";
      action = "<CMD>lua toggle_numbers()<CR>";
      options.desc = "Toggle numbers";
    }
    {
      key = "<leader>m";
      action = "<CMD>set relativenumber!<CR>";
      options.desc = "Toggle relativnumbers";
    }
    # Toggleterm
    {
      mode = "n";
      key = "<leader>x";
      action = "<CMD>ToggleTerm<CR>";
      options.desc = "ToggleTerm on";
    }
    {
      mode = "t";
      key = "<C-x>";
      action = "<CMD>ToggleTerm<CR>";
      options.desc = "ToggleTerm off";
    }
    # fzf-lua
    {
      mode = "n";
      key = "<leader>b";
      action = "<CMD>FzfLua buffers<CR>";
      options.desc = "Open fzf buffers";
    }
    {
      mode = "n";
      key = "<leader>f";
      action = "<CMD>FzfLua files<CR>";
      options.desc = "Open fzf files";
    }
    {
      mode = "n";
      key = "<leader>g";
      action = "<CMD>FzfLua git_files<CR>";
      options.desc = "Open fzf git_files";
    }
    {
      mode = "n";
      key = "<leader>s";
      action = "<CMD>FzfLua grep<CR>";
      options.desc = "Open fzf grep";
    }
  ];
}
