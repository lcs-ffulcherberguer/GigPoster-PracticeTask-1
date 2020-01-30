//: # Gig Poster - Practice Task 1
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![undertones-no-grid](undertones-no-grid.png "Undertones")
 ![undertones-with-grid](undertones-with-grid.png "Undertones")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let lightGrey = Color(hue: 84, saturation: 6, brightness: 88, alpha: 100)
let deepRed = Color(hue: 7, saturation: 97, brightness: 72, alpha: 100)

canvas.fillColor = Color(hue: 84, saturation: 6, brightness: 88, alpha: 100)
canvas.drawShapesWithBorders = false
canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height)

//// See where the origin is
//canvas.drawAxes()

//Move the origin 100 pixels right, 200 pixels up
canvas.translate(to: Point(x: 10, y: 400))


//Made the text for understones
canvas.drawText(message: "undertones", at: Point(x: 0, y: 36), size: 67, kerning: 0.75)


canvas.translate(to: Point(x: 10, y: 300 ))

//Draw the rotation
for i in stride (from: 100, to: 0, by: 5) {
    
    
    // text colour
    canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: i)
        
    //Made the text for understones
    canvas.drawText(message: "undertones", at: Point(x: 0, y: -20), size: 67)
    
    //Rotate origin
    canvas.rotate(by: -5)
    

}










//// See where the origin is
//canvas.drawAxes()

////Draw a square at the origin
//canvas.drawRectangle(at: Point(x:  0, y: 0), width: 50, height: 50)

////Make shapes no fill
//canvas.drawShapesWithFill = false

////Move the origin again - over 100, up 300
//canvas.translate(to: Point(x: 100, y: 300))

////Check to see where origin is
//canvas.drawAxes()

////Draw six squares rotated around current origin
//for _ in 1...6 {
    //Rotate origin
    //canvas.rotate(by: 60)  // 360/6 = 60
    
    ////Draw axes
    //canvas.drawAxes()
    
    ////Draw square
    //canvas.drawRectangle(at: Point(x: 0, y: 0), width: 50, height: 50)
//}


// Add red text at the top of the poster
//canvas.drawText(message: "straight music presents", at: Point(x: 0, y: 350), size: 10, kerning: 0.75)


/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multilple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

