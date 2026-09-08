# Incident Response

## Objective

Provide a structured process for identifying, containing, eradicating, and learning from security incidents while preserving evidence and minimizing business disruption.

## Incident Lifecycle

1. Preparation
2. Detection and triage
3. Scoping and impact assessment
4. Containment
5. Eradication
6. Recovery
7. Validation and monitoring
8. Lessons learned

## Triage Priorities

- What happened?
- When did it begin?
- Which users, hosts, identities and applications are involved?
- Is the activity ongoing?
- What is the likely attack vector?
- What privileges were obtained?
- Was persistence established?
- Was sensitive data accessed or exfiltrated?
- Which containment actions are safe to execute immediately?

## Evidence Sources

- Endpoint telemetry
- Identity and authentication logs
- Network telemetry
- SIEM events
- Email security logs
- Cloud audit logs
- Vulnerability and asset context
- Application and server logs

## Response Outputs

- Incident timeline
- Scope statement
- Indicators and observables
- Root-cause analysis
- Containment and eradication actions
- Recovery validation
- Control gaps
- Preventive and detective improvements

## Tooling

Microsoft Sentinel · Microsoft Defender · CrowdStrike Falcon · PowerShell · Python · vulnerability-management data sources

## Principles

Preserve evidence, document decisions, minimize unnecessary disruption, separate facts from hypotheses, and close the incident only after recovery and control validation are complete.
