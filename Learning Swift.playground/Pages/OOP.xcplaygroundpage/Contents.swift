//Object Oriented Programming
//Class, Structure

struct Resolution {
    var width = 5
    var height = 10
}

var resolution1 = Resolution()
resolution1.width
resolution1.height

var resolution2 = Resolution()
resolution2.height = 30
resolution2.width = 15


class VideoMode {
    var resolution = Resolution()
    var frameRate = 0.0
    var name = ""
}

let videoMode = VideoMode()
videoMode.frameRate
videoMode.name
videoMode.resolution.height

