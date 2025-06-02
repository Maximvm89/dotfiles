return {
	"coffebar/transfer.nvim",
	enabled = not PL_SITE,
	dev = PL_DEV,
	lazy = true,
	cmd = { "TransferInit", "DiffRemote", "TransferUpload", "TransferDownload", "TransferDirDiff", "TransferRepeat" },
	opts = {},
}
