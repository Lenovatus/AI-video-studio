cat > Dockerfile <<'EOF'
# Lightweight developer image for experimentation
FROM python:3.10-slim

WORKDIR /app

# copy backend placeholder
COPY backend/ ./backend/

# Install FastAPI + uvicorn for quick local runs (optional)
RUN pip install --no-cache-dir fastapi uvicorn

EXPOSE 8000
CMD ["uvicorn", "backend.app.main:app", "--host", "0.0.0.0", "--port", "8000"]
EOF
