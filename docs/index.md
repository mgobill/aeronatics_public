---
title: Apps by mgobill
layout: default
---

# App Launchpad

Explore the mobile apps from AeroNatics Studios and quickly jump to their
store listings, support portals, and policy pages.

<style>
.app-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
  gap: 1.5rem;
  margin: 2rem 0;
  padding: 0;
  list-style: none;
}

.app-card {
  border: 1px solid #e0e0e0;
  border-radius: 12px;
  padding: 1.5rem;
  background: #fff;
  box-shadow: 0 4px 14px rgba(0, 0, 0, 0.05);
}

.app-card h2 {
  margin-top: 0;
}

.status-badge {
  display: inline-block;
  padding: 0.2rem 0.75rem;
  margin: 0.25rem 0 1rem;
  border-radius: 999px;
  font-size: 0.85rem;
  font-weight: 600;
  background: #eef2ff;
  color: #4338ca;
}

.card-section {
  margin-top: 1rem;
}

.card-section h3 {
  margin-bottom: 0.35rem;
  font-size: 1rem;
}

.card-section ul {
  margin: 0;
  padding-left: 1.25rem;
}

.coming-soon {
  font-style: italic;
  color: #6b7280;
}

.store-badges {
  display: flex;
  flex-wrap: wrap;
  gap: 0.75rem;
  margin-top: 0.75rem;
}

.store-badge {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  border-radius: 10px;
  padding: 0.25rem;
  background: #f8fafc;
  border: 1px solid #e5e7eb;
  transition: transform 150ms ease, box-shadow 150ms ease;
}

.store-badge img {
  height: 48px;
  display: block;
}

.store-badge:not(.disabled):hover {
  transform: translateY(-2px);
  box-shadow: 0 10px 15px rgba(0, 0, 0, 0.08);
}

.store-badge.disabled {
  opacity: 0.55;
  cursor: not-allowed;
  flex-direction: column;
  background: #f1f5f9;
}

.store-badge.disabled span {
  font-size: 0.75rem;
  margin-top: 0.35rem;
  color: #6b7280;
}
</style>

<div class="app-grid">
  <div class="app-card">
    <h2>AeroNatics</h2>
    <p>Modern flight logging and safety tooling designed for both pilots and
    aeronautic hobbyists.</p>
    <div class="card-section">
      <h3>Store Links</h3>
      <div class="store-badges">
        <a
          class="store-badge"
          href="https://apps.apple.com/app/aeronatics/id6755212824"
          target="_blank"
          rel="noopener"
          aria-label="Download Aeronatics on the App Store"
        >
          <img
            src="{{ '/assets/branding/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg' | relative_url }}"
            alt="Download on the App Store"
          />
        </a>
        <div class="store-badge disabled" aria-label="Google Play coming soon">
          <img
            src="{{ '/assets/branding/GetItOnGooglePlay_Badge_Web_color_English.svg' | relative_url }}"
            alt="Get it on Google Play (coming soon)"
          />
          <span>Coming soon</span>
        </div>
      </div>
    </div>
    <div class="card-section">
      <h3>Support & Policies</h3>
      <ul>
        <li><a href="./aeronatics_support">Support Center</a></li>
        <li><a href="./aeronatics_privacy_policy">Privacy Policy</a></li>
        <li><a href="./aeronatics_csae_policy">CSAE Policy</a></li>
      </ul>
    </div>
  </div>

  <div class="app-card">
    <h2>Flight ATC</h2>
    <p>Air traffic control training drills with quick feedback loops and configurable challenges.</p>
    <div class="card-section">
      <h3>Store Links</h3>
      <div class="store-badges">
        <a
          class="store-badge"
          href="https://play.google.com/store/apps/details?id=com.mgobill.flightatc&pcampaignid=web_share"
          target="_blank"
          rel="noopener"
          aria-label="Get Flight ATC on Google Play"
        >
          <img
            src="{{ '/assets/branding/GetItOnGooglePlay_Badge_Web_color_English.svg' | relative_url }}"
            alt="Get it on Google Play"
          />
        </a>
        <a
          class="store-badge"
          href="https://apps.apple.com/us/app/flight-atc/id6755204257"
          target="_blank"
          rel="noopener"
          aria-label="Download Flight ATC on the App Store"
        >
          <img
            src="{{ '/assets/branding/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg' | relative_url }}"
            alt="Download on the App Store"
          />
        </a>
      </div>
    </div>
    <div class="card-section">
      <h3>Support & Policies</h3>
      <ul>
        <li><a href="./flightatc_support">Support Center</a></li>
        <li><a href="./flightatc_privacy_policy">Privacy Policy</a></li>
      </ul>
    </div>
  </div>
</div>
