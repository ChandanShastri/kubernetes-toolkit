# Applicable for non-native builds
# Example: Building for amd64 arch on Apple Silicon ( arm64 )

echo "
FROM --platform=linux/amd64 ubuntu:latest AS base

FROM scratch
COPY --from=base / /
" > Dockerfile

docker build --platform=linux/amd64 -f Dockerfile -t chandan:latest .
