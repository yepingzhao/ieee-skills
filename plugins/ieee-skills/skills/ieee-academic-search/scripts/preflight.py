#!/usr/bin/env python3
"""Pre-flight check for IEEE academic search dependencies."""
import sys
print("IEEE Academic Search preflight v1.0.0")
print("Checking dependencies...")
deps = {"requests": False, "xml.etree.ElementTree": True}
for mod, builtin in deps.items():
    try:
        if builtin:
            __import__(mod)
        else:
            __import__(mod)
        print(f"  {mod}: OK")
    except ImportError:
        print(f"  {mod}: MISSING")
print("Preflight complete.")
