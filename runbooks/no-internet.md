# Runbook: No Internet (Mac + Windows user)

**Version:** v1.0  
**Goal:** Restore connectivity or isolate cause and escalate with evidence.

---

## 1) Quick Intake (60 seconds)
- Scope: one user, multiple users, or site-wide?
- Connection: Wi-Fi or ethernet?
- What changed: update, moved desks, new network, VPN, outage?
- Exact symptom / error message:

---

## 2) Classify
- [ ] Single device  [ ] Multiple users  [ ] Site-wide  
- [ ] Wired  [ ] Wi-Fi  
- [ ] VPN required  [ ] No VPN  

---

## 3) Fast Checks (in order)
1. Confirm scope using a second device/user if available.
2. Confirm link: correct SSID, signal, cable seated, adapter enabled.
3. Confirm device has IP + gateway + DNS.
4. Test “by IP” vs “by name” to separate routing vs DNS.
5. Check VPN/proxy/captive portal.

---

## 4) Decision Tree
```mermaid
flowchart TD
  A[Start: No Internet] --> B{Single device?}
  B -- Yes --> C{Has IP + Gateway?}
  B -- No --> N[Likely network/ISP scope\nCheck outage + router]
  C -- No --> D[DHCP / IP config issue\nReconnect / renew]
  C -- Yes --> E{Can reach internet IP?}
  E -- No --> F[Gateway/ISP/VPN routing issue]
  E -- Yes --> G{Can resolve DNS?}
  G -- No --> H[DNS issue\nFix DNS / clear cache]
  G -- Yes --> I[Browser/app specific\nProxy/captive portal/cache]
