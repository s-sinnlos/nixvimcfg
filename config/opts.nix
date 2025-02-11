{
  opts = {
    colorcolumn = "80";
    cursorline = true;
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
