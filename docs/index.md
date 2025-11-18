---
title: Apps by mgobill
layout: default
---

# App Flight Deck

Explore AeroNatics Studios' aviation apps with polished marketing copy, iconography,
and quick links to stores, support, and policies.

<style>
:root {
  color-scheme: light;
}

.hero {
  margin: 2.5rem 0 3rem;
  padding: 2.5rem;
  border-radius: 24px;
  border: 1px solid rgba(99, 102, 241, 0.25);
  background: radial-gradient(circle at 10% 20%, rgba(129, 140, 248, 0.28), transparent 55%),
    radial-gradient(circle at 80% 0%, rgba(14, 165, 233, 0.25), transparent 60%),
    #0f172a;
  color: #f8fafc;
  box-shadow: 0 40px 90px rgba(15, 23, 42, 0.35);
}

.hero h1 {
  font-size: clamp(2.25rem, 6vw, 3.25rem);
  margin: 0.35rem 0 0.85rem;
}

.hero p {
  max-width: 720px;
  font-size: 1.1rem;
  line-height: 1.6;
}

.eyebrow {
  letter-spacing: 0.18em;
  text-transform: uppercase;
  font-size: 0.85rem;
  font-weight: 700;
  color: rgba(248, 250, 252, 0.75);
}

.hero-highlights {
  margin: 1.5rem 0 0;
  padding: 0;
  list-style: none;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 1rem;
}

.hero-highlights li {
  padding: 0.85rem 1rem;
  border-radius: 12px;
  border: 1px solid rgba(248, 250, 252, 0.25);
  background: rgba(15, 23, 42, 0.45);
}

.app-panels {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
  gap: 2rem;
  margin-bottom: 2.5rem;
}

.app-panel {
  border-radius: 20px;
  border: 1px solid #e2e8f0;
  padding: 2rem;
  background: #fff;
  box-shadow: 0 25px 65px rgba(15, 23, 42, 0.08);
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
}

.app-header {
  display: flex;
  align-items: center;
  gap: 1rem;
}

.app-header img {
  width: 96px;
  height: 96px;
  border-radius: 22px;
  box-shadow: 0 15px 30px rgba(15, 23, 42, 0.15);
  object-fit: cover;
  flex-shrink: 0;
}

.app-header h2 {
  margin: 0;
  font-size: 1.85rem;
}

.app-lede {
  margin: 0.15rem 0 0.5rem;
  color: #475569;
  line-height: 1.6;
}

.feature-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
  gap: 1rem;
}

.feature-block {
  border-radius: 14px;
  border: 1px solid #e2e8f0;
  padding: 1rem 1.25rem;
  background: #f8fafc;
}

.feature-block h3 {
  margin: 0 0 0.4rem;
  font-size: 1.05rem;
}

.feature-list {
  margin: 0;
  padding-left: 1.25rem;
  color: #475569;
}

.store-badges {
  display: flex;
  flex-wrap: wrap;
  gap: 0.9rem;
}

.store-badge {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  border-radius: 14px;
  padding: 0;
  background: transparent;
  border: none;
  line-height: 0;
  box-shadow: none;
  transition: transform 150ms ease;
}

.store-badge img {
  height: 46px;
  display: block;
}

.store-badge:hover {
  transform: translateY(-2px);
}

.policy-links {
  margin: 0;
  padding-left: 1.25rem;
  color: #475569;
}

@media (max-width: 640px) {
  .hero {
    padding: 2rem;
  }

  .app-header {
    flex-direction: column;
    align-items: flex-start;
  }

  .store-badge {
    width: 100%;
    justify-content: flex-start;
  }
}
</style>

<div class="hero">
  <p class="eyebrow">Aviation apps crafted by mgobill</p>
  <h1>Purpose-built mobile experiences for flight logging, spotting, and air traffic thrills.</h1>
  <p>
    Keep your aviation passion organized with AeroNatics or jump into quick air traffic challenges in Flight ATC.
    Each title below includes fresh marketing copy, store badges, and quick links so you can share the projects with confidence.
  </p>
  <ul class="hero-highlights">
    <li>Native iOS + Android experiences</li>
    <li>Community-friendly support centers</li>
    <li>Privacy-forward policies for every launch</li>
  </ul>
</div>

<div class="app-panels">
  <article class="app-panel" id="flight-atc">
    <div class="app-header">
      <img src="{{ '/assets/icon_flightATC.png' | relative_url }}" alt="Flight ATC app icon" />
      <div>
        <p class="eyebrow" style="color:#0f172a; letter-spacing:0.2em;">Arcade ATC Challenge</p>
        <h2>Flight ATC</h2>
        <p class="app-lede">
          Guide planes safely to their matching airports without collisions in this touch-and-draw
          air traffic control game. Strategy meets reflexes for quick play sessions and endless leaderboards.
        </p>
      </div>
    </div>
    <div class="feature-grid">
      <div class="feature-block">
        <h3>How to Play</h3>
        <ul class="feature-list">
          <li>Tap and hold a plane, sketch its route, then release to lock in the path.</li>
          <li>Match each plane's color to its airport and avoid mid-air collisions.</li>
          <li>Land planes to earn points – the game ends if two aircraft collide.</li>
        </ul>
      </div>
      <div class="feature-block">
        <h3>Why You'll Love It</h3>
        <ul class="feature-list">
          <li>Simple controls anyone can pick up in seconds.</li>
          <li>Endless, scaling difficulty keeps adrenaline high.</li>
          <li>Crisp visuals and a one-tap restart keep you chasing a new personal best.</li>
        </ul>
      </div>
      <div class="feature-block">
        <h3>Feature Highlights</h3>
        <ul class="feature-list">
          <li>Dynamic skies with multiple aircraft on screen at once.</li>
          <li>Color-coded airports that reinforce clarity and challenge.</li>
          <li>Optimized for phones and tablets with smooth performance.</li>
        </ul>
      </div>
    </div>
    <div>
      <h3>Store Links</h3>
      <div class="store-badges">
        <a
          class="store-badge"
          href="https://play.google.com/store/apps/details?id=com.mgobill.flightatc&pcampaignid=web_share"
          target="_blank"
          rel="noopener"
          aria-label="Get Flight ATC on Google Play"
        >
          <img src="{{ '/assets/branding/GetItOnGooglePlay_Badge_Web_color_English.svg' | relative_url }}" alt="Get it on Google Play" />
        </a>
        <a
          class="store-badge"
          href="https://apps.apple.com/us/app/flight-atc/id6755204257"
          target="_blank"
          rel="noopener"
          aria-label="Download Flight ATC on the App Store"
        >
          <img src="{{ '/assets/branding/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg' | relative_url }}" alt="Download on the App Store" />
        </a>
      </div>
    </div>
    <div>
      <h3>Support & Policies</h3>
      <ul class="policy-links">
        <li><a href="./flightatc_support">Support Center</a></li>
        <li><a href="./flightatc_privacy_policy">Privacy Policy</a></li>
      </ul>
    </div>
  </article>

  <article class="app-panel" id="aeronatics">
    <div class="app-header">
      <img src="{{ '/assets/icon_aeronatics.png' | relative_url }}" alt="AeroNatics app icon" />
      <div>
        <p class="eyebrow" style="color:#0f172a; letter-spacing:0.2em;">Spotting & Trip Logging</p>
        <h2>AeroNatics</h2>
        <p class="app-lede">
          Discover aircraft near you, log trips, and share missions with fellow aviation fans worldwide.
          AeroNatics keeps every moment organized, measurable, and easy to celebrate.
        </p>
      </div>
    </div>
    <div class="feature-grid">
      <div class="feature-block">
        <h3>Share & Discover</h3>
        <ul class="feature-list">
          <li>Upload photos with airline, aircraft, and airport tags.</li>
          <li>Post to global or followers-only feeds and keep collections curated.</li>
          <li>Bookmark, search, follow spotters, and stay inspired.</li>
        </ul>
      </div>
      <div class="feature-block">
        <h3>AeroDex & AeroLog</h3>
        <ul class="feature-list">
          <li>Reorder manufacturers, hide groups, and track which operators you have captured.</li>
          <li>Capture multi-leg trip details including seats, registrations, durations, and cabins.</li>
          <li>Trip Statistics highlight your top routes, longest flights, and preferred seats.</li>
        </ul>
      </div>
      <div class="feature-block">
        <h3>Earn & Protect</h3>
        <ul class="feature-list">
          <li>Unlock collectible badges and climb community leaderboards.</li>
          <li>Background uploads, moderation tools, and reporting keep posts reliable.</li>
          <li>Trip logs stay private while spotting posts can stay public or shared.</li>
        </ul>
      </div>
    </div>
    <div>
      <h3>Store Links</h3>
      <div class="store-badges">
        <a
          class="store-badge"
          href="https://apps.apple.com/app/aeronatics/id6755212824"
          target="_blank"
          rel="noopener"
          aria-label="Download Aeronatics on the App Store"
        >
          <img src="{{ '/assets/branding/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg' | relative_url }}" alt="Download on the App Store" />
        </a>
        <div class="store-badge" style="cursor:not-allowed; opacity:0.6;">
          <img src="{{ '/assets/branding/GetItOnGooglePlay_Badge_Web_color_English.svg' | relative_url }}" alt="Google Play badge (coming soon)" />
        </div>
      </div>
    </div>
    <div>
      <h3>Support & Policies</h3>
      <ul class="policy-links">
        <li><a href="./aeronatics_support">Support Center</a></li>
        <li><a href="./aeronatics_privacy_policy">Privacy Policy</a></li>
        <li><a href="./aeronatics_csae_policy">CSAE Policy</a></li>
      </ul>
    </div>
  </article>
</div>
