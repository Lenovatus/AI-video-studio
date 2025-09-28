cat > ROADMAP.md <<'EOF'
# Roadmap — AI-video-studio

This roadmap is a living document. Break down work into issues and milestones.

Short-term (MVP)
- Project scaffolding (frontend + backend)
- Basic pipeline: upload video → run enhancement/filter → download result
- Simple UI to configure processing parameters
- CLI for batch processing
- Basic tests and CI

Medium-term
- Integrate AI models for:
  - Frame interpolation / slow motion
  - Super-resolution / enhancement
  - Background removal
  - Text-to-video or text-to-image assistance
- Add model management (switch between providers)
- Preset and export profiles

Long-term
- Real-time preview / low-latency processing
- Plugin system to add new model processors
- Collaboration features (projects, team permissions)
- Hosted cloud offering + self-hostable Docker image

If you’d like, I can break these roadmap items into labeled GitHub issues for implementation.
EOF
