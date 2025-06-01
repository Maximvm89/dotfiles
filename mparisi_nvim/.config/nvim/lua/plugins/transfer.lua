return {
	"coffebar/transfer.nvim",
	enabled = true,
	dev = _G.PL_DEV,
	lazy = true,
	cmd = { "TransferInit", "DiffRemote", "TransferUpload", "TransferDownload", "TransferDirDiff", "TransferRepeat" },
	opts = {},
}
