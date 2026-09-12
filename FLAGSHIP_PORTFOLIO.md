# Flagship Cybersecurity Portfolio

This document curates the strongest implementation-focused repositories in the `OkiemuteEsiri` cybersecurity portfolio. It is intentionally selective: flagship status is reserved for projects that demonstrate substantive engineering depth rather than repository count.

## Flagship Selection Standard

A repository is treated as a flagship candidate when it demonstrates several of the following:

- working defensive/security-engineering code rather than README-only content;
- multiple implementation modules where the problem warrants them;
- realistic synthetic datasets or configuration fixtures;
- meaningful automated tests;
- architecture, methodology, risk-model, or trust-boundary documentation;
- example assessments, findings, dashboards, or reports;
- remediation and revalidation logic;
- MITRE ATT&CK mapping where relevant;
- CI/CD quality checks with least-privilege permissions where appropriate;
- explicit safety boundaries and no confidential or production-targeting content.

Flagship status is a presentation tier, not a claim that every project is production-ready. CI health must be evaluated against the exact commit being reviewed.

## Curated Flagships

| Domain | Repository | Recruiter-facing evidence |
|---|---|---|
| Vulnerability / Exposure Management | [vulnerability-prioritization-engine](https://github.com/OkiemuteEsiri/vulnerability-prioritization-engine) | Explainable prioritization combining technical severity, exploitability, asset context and remediation priority |
| Vulnerability / Exposure Management | [vulnerability-sla-analyzer](https://github.com/OkiemuteEsiri/vulnerability-sla-analyzer) | SLA aging, contextual prioritization, reporting and remediation-validation workflows |
| Vulnerability / Exposure Management | [patch-compliance-dashboard](https://github.com/OkiemuteEsiri/patch-compliance-dashboard) | Patch compliance, trend analytics, owner hotspots and exception governance |
| Vulnerability / Exposure Management | [cve-risk-enrichment](https://github.com/OkiemuteEsiri/cve-risk-enrichment) | CVE enrichment, contextual scoring, remediation evidence and analyst-ready reporting |
| Active Directory / Identity | [active-directory-security-lab](https://github.com/OkiemuteEsiri/active-directory-security-lab) | Privilege-path reasoning, directory posture, authentication telemetry and evidence-based closure |
| Active Directory / Identity | [adcs-security-lab](https://github.com/OkiemuteEsiri/adcs-security-lab) | Defensive AD CS template analysis, attack-path correlation and exception/remediation governance |
| Active Directory / Identity | [attack-path-mapper](https://github.com/OkiemuteEsiri/attack-path-mapper) | Graph-oriented attack-path modeling and prioritization using synthetic identity/security relationships |
| Red / Purple Teaming | [adversary-emulation-lab](https://github.com/OkiemuteEsiri/adversary-emulation-lab) | Authorized emulation planning, ATT&CK alignment, telemetry expectations and defensive validation |
| Red / Purple Teaming | [initial-access-simulation](https://github.com/OkiemuteEsiri/initial-access-simulation) | Defensive initial-access telemetry analysis, contextual scoring and remediation verification |
| Red / Purple Teaming | [lateral-movement-lab](https://github.com/OkiemuteEsiri/lateral-movement-lab) | RDP/SMB/WinRM/SSH telemetry analysis with ATT&CK-aligned defensive risk context |
| Detection Engineering | [detection-engineering-playbook](https://github.com/OkiemuteEsiri/detection-engineering-playbook) | Detection lifecycle, ATT&CK mapping, validation, tuning and quality methodology |
| Detection Engineering | [password-spray-detection-lab](https://github.com/OkiemuteEsiri/password-spray-detection-lab) | Identity-focused detection engineering using controlled synthetic authentication evidence |
| Incident Response | [incident-response-lab](https://github.com/OkiemuteEsiri/incident-response-lab) | Evidence-driven triage, containment, investigation, recovery and lessons-learned workflows |
| Web / API Security | [api-security-testing-lab](https://github.com/OkiemuteEsiri/api-security-testing-lab) | Controlled API security assessment methodology, findings and remediation-oriented validation |
| Web / API Security | [owasp-top10-lab](https://github.com/OkiemuteEsiri/owasp-top10-lab) | Structured web-security assessment and professional finding documentation |
| Network Security | [network-segmentation-audit](https://github.com/OkiemuteEsiri/network-segmentation-audit) | Segmentation-control review, risk analysis and remediation validation |
| Cloud Security | [cloud-security-posture-dashboard](https://github.com/OkiemuteEsiri/cloud-security-posture-dashboard) | Cloud posture aggregation, risk communication and remediation-oriented reporting |
| Wireless / Mobile / IoT | [wireless-security-lab](https://github.com/OkiemuteEsiri/wireless-security-lab) | Defensive wireless-security assessment with controlled lab framing |
| Wireless / Mobile / IoT | [mobile-application-security-lab](https://github.com/OkiemuteEsiri/mobile-application-security-lab) | Mobile application security assessment and remediation-oriented analysis |
| Wireless / Mobile / IoT | [iot-security-lab](https://github.com/OkiemuteEsiri/iot-security-lab) | IoT security review using safe, synthetic/controlled evidence and threat-model context |

## Strong Specialist Projects

These repositories are useful supporting evidence but should not be presented as equivalent to the flagship tier unless they are further deepened:

- [credential-access-lab](https://github.com/OkiemuteEsiri/credential-access-lab)
- [ntlm-security-lab](https://github.com/OkiemuteEsiri/ntlm-security-lab)
- [local-admin-paths-lab](https://github.com/OkiemuteEsiri/local-admin-paths-lab)
- [network-pentest-lab](https://github.com/OkiemuteEsiri/network-pentest-lab)
- [packet-analysis-lab](https://github.com/OkiemuteEsiri/packet-analysis-lab)
- [network-remediation-validation](https://github.com/OkiemuteEsiri/network-remediation-validation)
- [cloud-iam-review-lab](https://github.com/OkiemuteEsiri/cloud-iam-review-lab)
- [cloud-secrets-management-lab](https://github.com/OkiemuteEsiri/cloud-secrets-management-lab)
- [cloud-attack-paths-lab](https://github.com/OkiemuteEsiri/cloud-attack-paths-lab)
- [kubernetes-security-lab](https://github.com/OkiemuteEsiri/kubernetes-security-lab)
- [software-supply-chain-security](https://github.com/OkiemuteEsiri/software-supply-chain-security)
- [github-actions-security-lab](https://github.com/OkiemuteEsiri/github-actions-security-lab)
- [android-security-testing-lab](https://github.com/OkiemuteEsiri/android-security-testing-lab)

## Recruiter Review Path

For a short technical review, start with:

1. `vulnerability-prioritization-engine` — risk-based vulnerability-management engineering.
2. `active-directory-security-lab` — identity graph reasoning, posture controls and validation.
3. `adversary-emulation-lab` — safe Red/Purple Team methodology and detection expectations.
4. `detection-engineering-playbook` — detection lifecycle and ATT&CK-aligned validation.
5. `incident-response-lab` — evidence-driven response workflow.
6. `api-security-testing-lab` — application/API security methodology.
7. `network-segmentation-audit` — network-control validation.
8. `cloud-security-posture-dashboard` — cloud-security risk communication.

## Portfolio Governance

The portfolio follows these presentation rules:

- README-only or empty repositories are not counted as completed flagships.
- Synthetic data is preferred for reproducibility and confidentiality.
- ATT&CK mappings are defensive context, not proof that an intrusion occurred.
- A workflow file does not imply CI success; exact-commit workflow status must be checked before a green-CI claim.
- No repository should imply access to employer/client systems, real credentials, production targets or unauthorized exploitation.
- Lightweight labs remain lightweight when their purpose is narrow; depth is concentrated in the flagship and specialist tiers.
