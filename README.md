# Okiemute Esiri

## Cybersecurity Engineer | Vulnerability & Exposure Management | Security Engineering | Red/Purple Teaming

Cybersecurity engineer focused on **risk-based vulnerability management, exposure reduction, security engineering, detection, identity security, incident response, and authorized adversary simulation**. This portfolio emphasizes implementation depth, measurable remediation, technical documentation, and reproducible security workflows rather than repository count.

> **Portfolio principle:** Validate exposure. Prioritize by risk. Engineer repeatable controls. Measure remediation. Revalidate with evidence.

---

## Start Here — Curated Flagships

The portfolio contains broad specialist coverage, but the repositories below are the primary recruiter-facing projects. Empty or README-only labs are intentionally excluded from this tier.

| Domain | Flagship project | What it demonstrates |
|---|---|---|
| Vulnerability / Exposure | [Vulnerability Prioritization Engine](https://github.com/OkiemuteEsiri/vulnerability-prioritization-engine) | Explainable risk prioritization using severity, exploitability, exposure and asset context |
| Vulnerability / Exposure | [Vulnerability SLA Analyzer](https://github.com/OkiemuteEsiri/vulnerability-sla-analyzer) | Aging/SLA governance, contextual prioritization, reporting and revalidation |
| Vulnerability / Exposure | [Patch Compliance Dashboard](https://github.com/OkiemuteEsiri/patch-compliance-dashboard) | Compliance analytics, trends, owner hotspots and exception governance |
| Vulnerability / Exposure | [CVE Risk Enrichment](https://github.com/OkiemuteEsiri/cve-risk-enrichment) | CVE enrichment, contextual scoring, remediation evidence and analyst reporting |
| Identity / AD | [Active Directory Security Lab](https://github.com/OkiemuteEsiri/active-directory-security-lab) | Privilege paths, posture assessment, auth telemetry and evidence-based closure |
| Identity / AD | [AD CS Security Lab](https://github.com/OkiemuteEsiri/adcs-security-lab) | Defensive certificate-services analysis, attack-path correlation and governance |
| Identity / AD | [Attack Path Mapper](https://github.com/OkiemuteEsiri/attack-path-mapper) | Graph-based security relationships and privilege-path prioritization |
| Red / Purple Team | [Adversary Emulation Lab](https://github.com/OkiemuteEsiri/adversary-emulation-lab) | Authorized emulation planning, ATT&CK alignment and defensive validation |
| Red / Purple Team | [Initial Access Simulation](https://github.com/OkiemuteEsiri/initial-access-simulation) | Defensive initial-access telemetry analysis and remediation verification |
| Red / Purple Team | [Lateral Movement Lab](https://github.com/OkiemuteEsiri/lateral-movement-lab) | RDP/SMB/WinRM/SSH telemetry analysis with ATT&CK context |
| Detection Engineering | [Detection Engineering Playbook](https://github.com/OkiemuteEsiri/detection-engineering-playbook) | Detection lifecycle, ATT&CK mapping, validation and tuning methodology |
| Detection Engineering | [Password Spray Detection Lab](https://github.com/OkiemuteEsiri/password-spray-detection-lab) | Identity-focused detection using controlled synthetic authentication evidence |
| Incident Response | [Incident Response Lab](https://github.com/OkiemuteEsiri/incident-response-lab) | Triage, containment, investigation, recovery and lessons-learned workflows |
| Web / API | [API Security Testing Lab](https://github.com/OkiemuteEsiri/api-security-testing-lab) | Controlled API assessment, findings and remediation-oriented validation |
| Web / API | [OWASP Top 10 Lab](https://github.com/OkiemuteEsiri/owasp-top10-lab) | Structured web-security assessment and professional finding documentation |
| Network Security | [Network Segmentation Audit](https://github.com/OkiemuteEsiri/network-segmentation-audit) | Segmentation-control analysis, risk communication and revalidation |
| Cloud Security | [Cloud Security Posture Dashboard](https://github.com/OkiemuteEsiri/cloud-security-posture-dashboard) | Cloud posture aggregation and remediation-oriented reporting |
| Wireless | [Wireless Security Lab](https://github.com/OkiemuteEsiri/wireless-security-lab) | Defensive wireless assessment with controlled-lab framing |
| Mobile | [Mobile Application Security Lab](https://github.com/OkiemuteEsiri/mobile-application-security-lab) | Mobile security assessment and remediation-oriented analysis |
| IoT | [IoT Security Lab](https://github.com/OkiemuteEsiri/iot-security-lab) | IoT threat modeling and controlled security-review workflows |

For the full selection rationale, specialist tier, and recommended review sequence, see **[FLAGSHIP_PORTFOLIO.md](FLAGSHIP_PORTFOLIO.md)**.

---

## What the Portfolio Is Designed to Show

**Vulnerability & Exposure Management** — discovery, validation, CVE enrichment, exploitability context, risk-based prioritization, SLA governance, remediation ownership, exception management, patch compliance, revalidation and executive reporting.

**Security Engineering** — control design, secure configuration, exposure reduction, telemetry, automation, remediation validation, technical architecture and measurable security outcomes.

**Red & Purple Teaming** — authorized attack-path analysis, controlled technique simulation, adversary-emulation planning, ATT&CK mapping, telemetry expectations and defensive validation without unsafe payload distribution.

**Detection & Incident Response** — ATT&CK-aligned analytics, synthetic telemetry, investigation workflows, containment/recovery methodology, evidence quality and detection re-testing.

**Identity, Cloud & DevSecOps** — Active Directory/identity posture, privilege paths, AD CS, cloud posture, IAM, Kubernetes/container security, CI/CD security and software-supply-chain controls.

**Web, API, Network, Wireless, Mobile & IoT** — controlled assessment methodology, configuration review, security testing, remediation guidance and evidence-based validation.

---

## Engineering Standard for Flagship Work

Flagship repositories are expected to contain several of the following, as appropriate to the problem:

- working defensive/security-engineering code;
- multiple modules for non-trivial workflows;
- realistic synthetic datasets or configurations;
- meaningful automated tests;
- architecture, methodology and trust-boundary documentation;
- example outputs or assessment reports;
- remediation and revalidation workflows;
- MITRE ATT&CK mappings where relevant;
- least-privilege CI/CD quality checks where suitable;
- explicit limitations, safety boundaries and roadmap.

A repository is **not** treated as a completed flagship merely because it exists or has a README.

---

## Vulnerability Management Engineering Model

```text
Asset Discovery
      ↓
Exposure Identification
      ↓
Validation & Enrichment
      ↓
Exploitability + Business Context
      ↓
Risk-Based Prioritization
      ↓
Remediation Ownership
      ↓
SLA / Exception Governance
      ↓
Fix Validation
      ↓
Metrics, Trends & Executive Reporting
```

CVSS is treated as one input rather than the complete risk decision. Portfolio projects model additional context such as asset criticality, external exposure, known exploitation, exploit likelihood, privilege requirements, vulnerability age, compensating controls, remediation availability and business impact.

---

## Red / Purple Team Validation Model

```text
Authorization / Rules of Engagement
      ↓
Attack-Surface & Identity Context
      ↓
Controlled Technique Simulation
      ↓
Telemetry & Detection Expectations
      ↓
Evidence Collection
      ↓
Risk Communication
      ↓
Remediation
      ↓
Retest / Detection Validation
```

Offensive-security material is constrained to **authorized testing, synthetic evidence, controlled laboratories, defensive validation and professional education**. The portfolio does not publish real credentials, confidential client information, production targets, credential-theft workflows or uncontrolled exploitation payloads.

---

## Technology & Tooling Context

**Vulnerability / Exposure:** Tenable · Qualys · CrowdStrike Falcon · Microsoft Defender · Armis · Kenna / ThreatHub · ServiceNow IRM  
**Application / Network Security:** Burp Suite · OWASP ZAP · Nmap · Kali Linux · protocol and configuration analysis  
**Detection / Identity:** Microsoft Sentinel · Microsoft Defender · Active Directory · Microsoft 365 / Azure security tooling · MITRE ATT&CK  
**Automation / Data:** Python · PowerShell · MongoDB · SQL · Power BI · REST APIs · Git · CI/CD  
**Infrastructure:** Linux · Windows · Networking · SSH · Docker · Kubernetes fundamentals

Tool names describe portfolio and professional technical context; individual repositories document exactly what they implement and what remains out of scope.

---

## Portfolio Governance

- **Synthetic data by default:** examples avoid employer/client data and real credentials.
- **Defensive ATT&CK context:** mappings explain threat relevance; they do not claim compromise occurred.
- **Exact-commit CI discipline:** a workflow file is not evidence that CI passed. Green-CI claims require verification against the exact commit under review.
- **No production targeting:** repositories do not depend on scanning or exploiting third-party systems.
- **Evidence before closure:** remediation workflows emphasize post-change validation rather than ticket status alone.
- **Depth over volume:** flagship and specialist repositories receive engineering depth; narrow labs remain intentionally lightweight.

---

## Recruiter Review Sequence

For a fast technical assessment, review these in order:

1. [Vulnerability Prioritization Engine](https://github.com/OkiemuteEsiri/vulnerability-prioritization-engine)
2. [Active Directory Security Lab](https://github.com/OkiemuteEsiri/active-directory-security-lab)
3. [Adversary Emulation Lab](https://github.com/OkiemuteEsiri/adversary-emulation-lab)
4. [Detection Engineering Playbook](https://github.com/OkiemuteEsiri/detection-engineering-playbook)
5. [Incident Response Lab](https://github.com/OkiemuteEsiri/incident-response-lab)
6. [API Security Testing Lab](https://github.com/OkiemuteEsiri/api-security-testing-lab)
7. [Network Segmentation Audit](https://github.com/OkiemuteEsiri/network-segmentation-audit)
8. [Cloud Security Posture Dashboard](https://github.com/OkiemuteEsiri/cloud-security-posture-dashboard)

This sequence gives a cross-domain view of risk prioritization, identity security, Red/Purple Teaming, detection, incident response, application security, network controls and cloud security without requiring a recruiter to browse every repository.

---

## Professional Focus

Primary areas of interest include **Security Engineering, Vulnerability Management, Exposure Management, Detection Engineering, Threat & Vulnerability Analysis, Active Directory/Identity Security, and Red/Purple Team security validation**.

**Security is strongest when findings become engineering decisions, remediation becomes measurable, and validation closes the loop.**
