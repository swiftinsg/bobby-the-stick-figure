# Student Submissions Guide

Welcome to the Stick Figure Showcase! Follow these simple steps to add your own creative stick figure to the app.

## How to Submit Your Stick Figure

### Step 1: Create Your Folder
Create a new folder with your name inside the `Students` directory:
```
Students/
└── YourName/
```

### Step 2: Copy the Template
1. Copy `TEMPLATE_StickFigure.swift` from the Students folder
2. Paste it into your new folder
3. Rename it to `YourNameStickFigure.swift` (e.g., `BobbyStickFigure.swift`)

### Step 3: Customize Your Stick Figure
Open your file and:
1. Change `TEMPLATEStickFigure` to `YourNameStickFigure`
2. Update `studentName` to your name
3. **Get creative with decorations!** 

You can copy EmojiView lines directly from the original code! Just paste them into your decorations array:
```swift
var decorations: [EmojiView] {
    [
        EmojiView(symbol: "🧢", size: 40, x: 0, y: -170),
        EmojiView(symbol: "🕶️", size: 38, x: 0, y: -145),
        // Add more decorations here!
    ]
}
```

### Step 4: Build and Test
1. Open the project in Xcode
2. Hit Build (⌘B) or Run (⌘R)
3. The registry updates automatically - no scripts needed!
4. Your stick figure will appear wandering around with others

### Step 5: Submit Your PR
1. Commit ONLY your folder (e.g., `Students/YourName/`)
   - Do NOT commit `StudentRegistry.swift` (it's auto-generated)
2. Push to your branch
3. Create a Pull Request

## Rules

1. **Only modify files in your folder**
2. **Don't manually edit `StudentRegistry.swift`** (it's auto-generated)
3. **Keep it appropriate**

## Troubleshooting

- **My stick figure doesn't appear**: Make sure you ran the registry script
- **Build errors**: Check that your struct name matches your filename
- **Emojis look weird**: Some emojis render differently; try alternatives   
