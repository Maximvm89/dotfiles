return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- -- or if using mini.icons/mini.nvim
  dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys = {

	  {
		  "<leader>sf",
		  function()
			  require("fzf-lua").files();
		  end,
		  desc = "Find Files",
  	  },
	  {
		  "<leader>sb",
		  function()
			  require("fzf-lua").lgrep_curbuf();
		  end,
		  desc = "Live Grep current Buffer",
  	  },
	  {
		  "<leader>sg",
		  function()
			  require("fzf-lua").live_grep();
		  end,
		  desc = "Live Grep current Project",
  	  },
	  {
		  "<leader><leader>",
		  function()
			  require("fzf-lua").buffers();
		  end,
		  desc = "Open Buffers",
  	  },
	  {
		  "<leader>sh",
		  function()
			  require("fzf-lua").oldfiles();
		  end,
		  desc = "Search Files History",
  	  },
  }

}
