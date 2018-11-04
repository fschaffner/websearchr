# Create hex sticker

library("hexSticker")
url <- "http://freevector.co/wp-content/uploads/2014/06/72626-world-wide-web.png"
url <- "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Globe_icon.svg/1024px-Globe_icon.svg.png"
sticker(url, 
        package="websearchr",
        h_fill = "blue",
        h_color = "darkblue",
        p_color = "white",
        url = "github.com/fschaffner/websearchr",
        p_size = 7,
        s_width = 0.4,
        s_height = 0.005,
        s_x=1, 
        s_y=.7)
