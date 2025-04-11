# GlassmorphismUI

A SwiftUI component library inspired by elegant glassmorphism design!
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

### Circle Button with Icon
| iPhon 16 Plus | iPad Pro 13-inch |
|-|-|
| <img src="" width="500"/> | <img src='' img width = 500> |

``` Swift

```

### Icon Button with Title
| iPhon 16 Plus | iPad Pro 13-inch |
|-|-|
| <img src="" width="500"/> | <img src='' img width = 500> |

``` Swift

```


### Simple Button
| iPhon 16 Plus | iPad Pro 13-inch |
|-|-|
| <img src="" width="500"/> | <img src='' img width = 500> |

``` Swift

```

### Background Gradient

### Simple Button
| iPhon 16 Plus | iPad Pro 13-inch |
|-|-|
| <img src="" width="500"/> | <img src='' img width = 500> |

``` Swift

```

### Glass-style Rounded Rectangle View
| iPhon 16 Plus | iPad Pro 13-inch |
|-|-|
| <img src="" width="500"/> | <img src='' img width = 500> |

``` Swift

```


