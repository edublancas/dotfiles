"""
Creates symlinks for Claude config files.

Symlinks:
  claude/CLAUDE.md -> ~/.claude/CLAUDE.md
  claude/skills/*  -> ~/.claude/skills/*
"""

import os
import sys
from pathlib import Path

from symlinks import make

DOTFILES_ROOT = Path(__file__).resolve().parent.parent
CLAUDE_SRC = DOTFILES_ROOT / "claude"
CLAUDE_DST = Path.home() / ".claude"


def collect_symlinks():
    sources = []
    destinations = []

    # CLAUDE.md
    claude_md = CLAUDE_SRC / "CLAUDE.md"
    if claude_md.exists():
        sources.append(str(claude_md))
        destinations.append(str(CLAUDE_DST / "CLAUDE.md"))

    # skills/*
    skills_src = CLAUDE_SRC / "skills"
    if skills_src.is_dir():
        skills_dst = CLAUDE_DST / "skills"
        skills_dst.mkdir(parents=True, exist_ok=True)
        for f in sorted(skills_src.iterdir()):
            if f.is_file():
                sources.append(str(f))
                destinations.append(str(skills_dst / f.name))

    return sources, destinations


def main():
    sources, destinations = collect_symlinks()
    if not sources:
        print("No claude config files found in claude/")
        sys.exit(0)
    make(sources, destinations)


if __name__ == "__main__":
    main()
