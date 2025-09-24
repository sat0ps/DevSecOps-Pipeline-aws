# DevSecOpsPipeline.aws (SatOps)

GitHub-native DevSecOps pipeline (AWS‑flavoured) with clean naming and a tiny demo app.

**Stages**
- Secrets scan: Gitleaks
- SAST: GitHub CodeQL
- Build & Push: Docker → GHCR
- Image scan: Trivy
- IaC scan: Checkov (Terraform + K8s)
- SBOM: Syft + Grype
- Deploy (optional): kubectl to `dev` environment

## Quick start
1) Optional: replace `src/` + `Dockerfile` with your app.
2) Commit & push to a GitHub repo named **DevSecOpsPipeline.aws** (or any name).
3) If you want deploy, add Actions secret `KUBE_CONFIG_B64` (base64 kubeconfig).
