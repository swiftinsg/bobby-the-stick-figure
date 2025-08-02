#!/bin/bash

# Script to auto-generate the student registry
# This scans the Students directory and creates a registry file

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_DIR="$SCRIPT_DIR/.."
STUDENTS_DIR="$PROJECT_DIR/Students"
REGISTRY_FILE="$STUDENTS_DIR/StudentRegistry.swift"

# Start writing the registry file
cat > "$REGISTRY_FILE" << 'EOF'
//
//  StudentRegistry.swift
//  stick-figure
//
//  AUTO-GENERATED FILE - DO NOT EDIT
//  Run Scripts/generate_registry.sh to update
//

import Foundation

struct StudentRegistry {
    static let allSubmissions: [any StickFigureSubmission] = [
EOF

# Find all Swift files in student directories
for student_dir in "$STUDENTS_DIR"/*; do
    if [ -d "$student_dir" ] && [ "$(basename "$student_dir")" != "StudentRegistry.swift" ]; then
        # Look for Swift files in the student directory
        for swift_file in "$student_dir"/*.swift; do
            if [ -f "$swift_file" ]; then
                # Extract the struct name (assumes it matches the filename)
                filename=$(basename "$swift_file" .swift)
                echo "        ${filename}()," >> "$REGISTRY_FILE"
            fi
        done
    fi
done

# Close the array and struct
cat >> "$REGISTRY_FILE" << 'EOF'
    ]
}
EOF

echo "✅ Generated registry with $(find "$STUDENTS_DIR" -name "*.swift" -not -name "StudentRegistry.swift" | wc -l | tr -d ' ') student submissions"