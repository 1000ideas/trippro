L::News.class_eval do
	has_attached_file :photo,
	styles: { thumb: "50x50", small: "200x200>", medium: "800x600>", large: "1280x780", large_cropped: "1280x328#" },
	path: ":rails_root/public/system/news_photos/:id/:style/:filename",
	url: "/system/news_photos/:id/:style/:filename",
	preserve_files: true
end