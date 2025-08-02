# Student Submissions Guide

Welcome to the Stick Figure Showcase! Follow these simple steps to add your own creative stick figure to the app.

## 🎨 How to Submit Your Stick Figure

### Step 1: Create Your Folder
Create a new folder with your name inside the `Students` directory:
```
Students/
└── YourName/
```

### Step 2: Copy the Template
1. Copy `TEMPLATE_StickFigure.swift` from the Students folder
2. Paste it into your new folder
3. Rename it to `YourNameStickFigure.swift` (e.g., `AliceStickFigure.swift`)

### Step 3: Customize Your Stick Figure
Open your file and:
1. Change `TEMPLATEStickFigure` to `YourNameStickFigure`
2. Update `studentName` with your actual name
3. Add a fun `description` for your stick figure
4. **Get creative with decorations!** Change the emojis, positions, and sizes

### Step 4: Update the Registry
Run this command from the project root:
```bash
./Scripts/generate_registry.sh
```

### Step 5: Test Your Creation
1. Open the project in Xcode
2. Build and run the app
3. Your stick figure should be wandering around with others!
4. Drag to pan around the canvas

### Step 6: Submit Your PR
1. Commit your changes (only your folder + the auto-generated registry)
2. Push to your branch
3. Create a Pull Request

## 💡 Decoration Tips

- **Position Guide**:
  - Head accessories: `y: -170`
  - Eyes/Glasses: `y: -145`
  - Mouth: `y: -110`
  - Body: `y: -50`
  - Hands: `x: ±60, y: -60`
  - Feet: `x: ±45, y: 80`

- **Size Guide**:
  - Small accessories: 30-40
  - Medium items: 50-70
  - Large items: 80-100

- **Creative Ideas**:
  - Add floating objects (clouds, stars, hearts)
  - Use different hand gestures
  - Mix and match clothing items
  - Add pets or accessories around your figure

## 🚨 Important Rules

1. **Only modify files in YOUR folder**
2. **Don't edit other students' submissions**
3. **Don't manually edit `StudentRegistry.swift`** (it's auto-generated)
4. **Keep it appropriate and school-friendly**

## 🐛 Troubleshooting

- **My stick figure doesn't appear**: Make sure you ran the registry script
- **Build errors**: Check that your struct name matches your filename
- **Emojis look weird**: Some emojis render differently - try alternatives

Have fun creating your unique stick figure! 🎉