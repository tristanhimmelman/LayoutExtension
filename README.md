# LayoutExtension

Extensions to UIView, UIScrollView and CGRect to make view manipulation easier

##UIView

The UIView extension provides a simple interface for modifying and querying a UIViews frame

```swift
let view = UIView(frame: CGRectMake(10, 10, 20, 20))
view.x = 20 // frame now equals (20, 10, 20, 20)
view.y = 0 // frame now equals (20, 0, 20, 20)
view.width = 100 // frame now equals (20, 0, 120, 20)
view.height = 100 // frame now equals (20, 0, 120, 100)

view.centerX = 100 // frame now equals (50, 0, 120, 100)
view.centerY = 100 // frame now equals (50, 50, 120, 100)

view.right = 100  // frame now equals (0, 50, 120, 100)
view.bottom = 100  // frame now equals (0, 0, 120, 100)

view.cornerRadius = 10 // view now hows rounded corners
```

##UIScrollView

The UIScrollView extension provides a simple way to modify and query the contentInset and scrollIndicatorInset values. Below are the available functions:
```swift 
contentInsetTop
contentInsetBottom
contentInsetLeft
contentInsetRight

scrollIndicatorInsetTop
scrollIndicatorInsetBottom
scrollIndicatorInsetLeft
scrollIndicatorInsetRight
```

##CGRect 

The CGRect extension provides the follow interface
```swift 
x
y
top
bottom
left
right
width
height
centerX
centerY
```