output "png" {
	width = 1600
	height = 467
}

variable "background" {
    type = "string"
    default = "images/banner_background_1600x467.png"
}

variable "edition" {
    type = "string"
    default = "Edition"
}

layer "image" "background" {
    content = "${file(background)}"
    x = 0
    y = 0
}

layer "text" "hashi" {
	content = "Hashi"
	x = 450
	y = 200
	size = 80
	font = "fonts/klavika/bold.ttf"
}

layer "text" "t" {
	content = "T"
	x = 645
	y = 200
	size = 80
	font = "fonts/klavika/light.ttf"
}

layer "text" "alks_edition" {
	content = "alks: ${edition}"
	x = 680
	y = 200
	size = 80
	font = "fonts/klavika/light.ttf"
}