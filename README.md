# Secure CI Container Pipeline

Minimal DevOps showcase project demonstrating secure CI/CD pipeline
with container build, automated testing, and vulnerability scanning.

---

## Objective

Demonstrate practical DevOps capabilities:

- Multi-stage CI pipeline
- Docker image build
- Automated testing (pytest)
- Container security scanning (Trivy)
- Controlled image publishing
- Secure-by-default pipeline design

---

## Architecture

Developer → Git Push → CI Pipeline

Stages:
1. Test
2. Build
3. Security Scan
4. Push

Security gate blocks HIGH and CRITICAL vulnerabilities.

---

## Tech Stack

- Python 3.11
- Flask
- Docker
- GitLab CI
- Trivy (container scanning)
- Pytest

---

## Project Structure

secure-ci-container-pipeline

README.md
.gitlab-ci.yml
Dockerfile
requirements.txt

app
    app.py

tests
    test_app.py

scripts
    security_scan.sh

---

## Pipeline Stages

### Test
- Install dependencies
- Execute unit tests

### Build
- Build Docker image
- Tag using commit SHA

### Scan
- Run container vulnerability scan
- Fail on HIGH / CRITICAL issues

### Push
- Push image to registry (main branch only)

---

## Example Run (Local)

Build image:

    docker build -t secure-ci-demo .

Run container:

    docker run -p 8080:8080 secure-ci-demo

---

## DevOps Practices Demonstrated

- Shift-left security
- Immutable container builds
- Reproducible pipeline
- Stage isolation
- Fail-fast design
- CI as code

---

## Future Improvements

- SBOM generation
- Image signing (Cosign)
- Policy enforcement (OPA)
- Helm deployment stage
- GitOps integration

---

## Author

Gabriel  
DevOps & Network Automation Engineer
