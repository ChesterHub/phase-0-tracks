nice_cars = {
"Infiniti" => [
	"G35",
	"Q60",
	"QX50"
],
"BMW" => [
	"M3",
	"435i",
	"X6 Panda"
],
"Honda" => [
	"Accord",
	"Pilot",
	"Cr-V"
]
}

p nice_cars["BMW"][2]
p nice_cars["Infiniti"]
p nice_cars["Honda"].push("Civic")
p nice_cars["Honda"].length
p nice_cars["Infiniti"][2]
p nice_cars["BMW"].reverse
p nice_cars["Honda"].delete_at 3
p nice_cars["Honda"].length
