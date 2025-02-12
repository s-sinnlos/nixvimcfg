{
  opts = {
    # Activate relativ numbers
    relativenumber = true;

    # Use the system clipboard (y -> Ctrl+v, Ctrl+c -> p)
    clipboard = "unnamedplus";

    # Highlight 80 char column
    colorcolumn = "80";

    # Highlight the line with the cursor
    cursorline = true;

    # Number of spaces that represent a <TAB>
    tabstop = 2;
    softtabstop = 2;

    # Use spaces instead of tabs
    expandtab = true;

    # Enable smart indentation
    smartindent = true;

    # Number of spaces to use for each step of (auto)indent
    shiftwidth = 2;

    # Enable break indent
    breakindent = true;

    # Minimum number of screen lines to keep above and below the cursor
    scrolloff = 8;

    # Enable mouse support
    mouse = "a";

    # Set folding method to manual
    foldmethod = "manual";

    # Disable folding by default
    foldenable = false;

    # Wrap long lines at a character in 'breakat'
    linebreak = true;

    # Disable spell checking
    spell = false;

    # Disable swap file creation
    swapfile = false;

    # Time in milliseconds to wait for a mapped sequence to complete
    timeoutlen = 300;

    # Enable 24-bit RGB color in the TUI
    termguicolors = true;

    # Don't show mode in the command line
    showmode = false;

    # Open new split below the current window
    splitbelow = true;

    # Keep the screen when splitting
    splitkeep = "screen";

    # Open new split to the right of the current window
    splitright = true;
  };

  extraConfigLuaPre = ''
    -- function for toggling numbers
     _G.relnum_on = false -- merker for toggle relativenumbers
    function toggle_numbers()
      local relnum = vim.opt.relativenumber._value
      local num = vim.opt.number._value

      vim.cmd('set number!')
      if relnum == true and num == true then
        _G.relnum_on = true
        vim.cmd('set norelativenumber')
      elseif relnum == false and _G.relnum_on then
        _G.relnum_on = false
        vim.cmd('set relativenumber')
      end
    end
  '';
}
