# GlassmorphismUI
This is a glassmorphism UI package.
![Neutral Minimal Phone Frames Mockup Pinterest Pin (1)](https://github.com/user-attachments/assets/7b224a6d-d74b-4d2d-8c1c-f494b5ce1cc0)



### Installation

To add **GlassmophismUI** to your project:

- Open your project in Xcode
- Go to `File > Swift Packages > Add Package Dependency...`
- Search for `GlassmophismUI` or `https://github.com/nekoribocchi/GlassmorphismUI.git` and follow Xcode's installation dialogs.
- Import `GlassmorphismUI` whereever you want to use it

## Usage

### Rounded Top Bar
| iPhon 16 Plus | iPad Pro 13-inch |
|-|-|
| <img src="https://github.com/user-attachments/assets/e1c6de58-2547-493f-9351-ef055a519fee" width="500" alt="BDButtonTrayItemAnimation" /> | <img src='https://github.com/user-attachments/assets/2366e2c0-c9de-4e3c-9e3d-6b475a2d977c' img width = 500> |


``` Swift
RoundedTopBar(){
            Text("Insert any custom View content here")
                .foregroundColor(.white)
        }
```


---

You can customize the color, gradient, height, and more:

| iPhon 16 Plus | iPad Pro 13-inch |
|-|-|
| <img src="https://github.com/user-attachments/assets/74f86de1-f8ff-4395-b37c-423e964f8746" width="500" alt="BDButtonTrayItemAnimation" /> | <img src='https://github.com/user-attachments/assets/8106b0f0-89c7-47e1-a6c7-ae4638781b59' img width = 500> |



``` Swift
RoundedTopBar(startColor: .blue,
                      endColor: .green,
                      heightRatio:0.3,
                      isGradient:true){
            Text("Insert any custom View content here")
                .foregroundColor(.white)
        }
```




### Rounded Bottom Bar
| iPhon 16 Plus | iPad Pro 13-inch |
|-|-|
| <img src="https://github.com/user-attachments/assets/1c4f365e-0d4c-444e-9153-99eac9e5c9de" width="500" alt="BDButtonTrayItemAnimation"/> | <img src='https://github.com/user-attachments/assets/f859b9ef-68fd-428b-973c-7bc376d85b38' img width = 500> |




``` Swift
ZStack {
            GradientBackground(startColor: .g_Orange, endColor: .g_Purple)
            RoundedBottomBar{
                Text("Insert any custom View content here")
                                .foregroundColor(.white)
            }
        }
```
--- 
You can customize the color, gradient, height, and more:

| iPhon 16 Plus | iPad Pro 13-inch |
|-|-|
| <img src="https://github.com/user-attachments/assets/1130a811-94eb-4a64-905c-d3831a8ef152" width="500" alt="BDButtonTrayItemAnimation"/> | <img src='https://github.com/user-attachments/assets/95de5efd-996b-46a3-ba5f-c2751114ae9c' img width = 500> |



``` Swift
        RoundedBottomBar(startColor:.blue,
                         endColor: .green,
                         opacity: 0.8,
                         heightRatio: 0.3,
                         text: nil,
                         isGradient: true){
            Text("Insert any custom View content here")
                .foregroundColor(.white)
        }
```

---

### CapsuleButton
| iPhon 16 Plus | iPad Pro 13-inch |
|-|-|
| <img src="https://github.com/user-attachments/assets/f77702f1-376e-4aa4-9c3c-59751fe10ed6" width="500"/> | <img src='https://github.com/user-attachments/assets/f4f09f46-69df-42cf-b5be-ff455d356a56' img width = 500> |

``` Swift
CapsuleButton(
    // Text displayed on the button
    title: "Button",
    
    // Ratio of the button's height to the screen height (10% of screen height)
    heightRatio: 0.1,
    
    // Background color of the button
    backgroundColor: .r_Purple,
    
    // Text color
    textColor: .white,
    
    // Font name used for the button title
    //Please look at 'How to use custom font'  below
    font: "PottaOne-Regular",
    
    // Furigana (small text above the main title, useful for Japanese reading aid)
    furigana: "button",
    
    // System icon name (e.g., SF Symbols)
    iconName: "xmark",
    
    // Color of the icon
    iconColor: .white,
    
    // Action to perform when the button is tapped
    action: {
        print("Button Tapped!")
    }
)

```
 - **How to use custom font** <br>
if you want to user custom font, please follow the steps below. <br>
1. download font from a font distribustion website. (ex. [https://fonts.google.com/](https://fonts.google.com/)) <br>
2. Add the font to your Xcode project <br>
Drag and drop the font file (e.g., .ttf or .otf) into your Xcode project.
3. Update Info.plist <br>
Open Info.plist and add a new key called Fonts provided by application (or UIAppFonts). Then add the file name of the font, including the extension (e.g., CustomFont.ttf).


### Glass-style Rounded Rectangle View
| iPhon 16 Plus | iPad Pro 13-inch |
|-|-|
| <img src="https://github.com/user-attachments/assets/d621647c-c8b7-48a9-8d73-1d745e06a1e8" width="500"/> | <img src='https://github.com/user-attachments/assets/40ea6f62-a4ca-4151-99a6-331706e86a6c' img width = 500> |

``` Swift
        ZStack {
            GradientBackground(startColor: .g_Purple, endColor: .g_Orange)
                
            VStack {
                Spacer()
                RoundRectangleView(heightRatio: 0.7) {
                    //Add Any View
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Add Any View")
                    }
                }
                .padding()
            }
        }
```
