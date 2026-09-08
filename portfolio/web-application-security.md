# Web Application Penetration Testing

## Objective

Assess web applications and APIs for exploitable weaknesses while producing evidence that developers and security teams can convert directly into remediation work.

## Methodology

1. Confirm scope, authorization, test accounts and data-handling constraints.
2. Map application functionality, technologies, authentication flows and trust boundaries.
3. Enumerate endpoints, parameters, roles and API behavior.
4. Test authentication, session management and authorization.
5. Validate input-handling weaknesses and injection classes.
6. Assess business-logic abuse, file handling and server-side request behavior.
7. Review security headers, transport configuration and sensitive-data exposure.
8. Retest remediated findings.

## Primary Test Areas

- Broken access control / IDOR
- Authentication and session weaknesses
- SQL / command / template injection
- Cross-site scripting
- CSRF where relevant
- SSRF
- Insecure file upload
- Path traversal
- API authorization and object-level access
- Rate limiting and abuse controls
- Security misconfiguration
- Sensitive-data exposure
- Business-logic flaws

## Tooling

Burp Suite · OWASP ZAP · Nmap · SQLmap · Nikto · curl · browser developer tools · Python

## Finding Format

Each finding should capture:

- Affected endpoint or component
- Preconditions
- Technical impact
- Business impact
- Reproduction evidence from an authorized environment
- Severity rationale
- Remediation guidance
- Validation / retest outcome

## Standards

Testing is aligned conceptually with OWASP Web Security Testing Guide and OWASP Top 10 categories, while final severity is based on exploitability, exposure and business context rather than category name alone.
