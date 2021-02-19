////////////////////////////////////////////////////////////////////////
//                                                                    //
//  Firefox user.js template of globally applicable settings.         //
//                                                                    //
//  Updated: 2020-11-14 (arkenfox/user.js @ ccbca41e)                 //
//                                                                    //
////////////////////////////////////////////////////////////////////////

/*
 * General application behavior.
 */

// Disable automatic updates, since they don't work when Firefox is run as
// a non-admin user.  Firefox will still check for updates and display a
// pop-up when a one is available.
user_pref("app.update.auto", false);

// Don't open a "What's New" tab on first launch after installing an update.
user_pref("browser.startup.homepage_override.mstone", "ignore");
user_pref("startup.homepage_welcome_url", "");
user_pref("startup.homepage_welcome_url.additional", "");
user_pref("startup.homepage_override_url", "");

// Don't add a "What's New" icon on first launch after installing an update.
user_pref("browser.messaging-system.whatsNewPanel.enabled", false);

// Don't check whether Firefox is the default browser.
user_pref("browser.shell.checkDefaultBrowser", false);

// Keep the new tab page totally blank.
user_pref("browser.newtabpage.enabled", false);
user_pref("browser.newtabpage.enhanced", false);
user_pref("browser.newtab.preload", false);

// Disable all known content categories for the new tab page, just in case.
user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
user_pref("browser.newtabpage.activity-stream.showSearch", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);

// Clear topsites list.
user_pref("browser.newtabpage.activity-stream.default.sites", "");

// Enable Container Tabs.
user_pref("privacy.userContext.enabled", true);
user_pref("privacy.userContext.ui.enabled", true);

// Don't store any form or login data for auto-fill.
user_pref("browser.formfill.enable", false);
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.available", false);
user_pref("extensions.formautofill.creditCards.available", false); // [FF57+]
user_pref("extensions.formautofill.creditCards.enabled", false); // [FF56+]
user_pref("signon.rememberSignons", false);

// Warn when quitting when more than one tab is open.
user_pref("browser.showQuitWarning", true);

// Don't quit the application when closing the last tab.
user_pref("browser.tabs.closeWindowWithLastTab", false);

// Don't warn about accessing about:config.
user_pref("general.warnOnAboutConfig", false);
user_pref("browser.aboutConfig.showWarning", false);

// Don't display Unicode characters in URLs.
user_pref("network.IDN_show_punycode", true);

// Always show the full URL.
user_pref("browser.urlbar.trimURLs", false);



/*
 * Content Blocking.
 */

// Use "Custom" Content Blocking configuration.
user_pref("browser.contentblocking.category", "custom");

// Enable all Tracking Protection features.
user_pref("privacy.trackingprotection.enabled", true);
user_pref("privacy.trackingprotection.cryptomining.enabled", true);
user_pref("privacy.trackingprotection.fingerprinting.enabled", true);

// Block all third-party cookies by default.
user_pref("network.cookie.cookieBehavior", 1);



/*
 * Extensions.
 */

// Disable Encrypted Media Extensions API.
user_pref("media.eme.enabled", false);

// Disable Pocket.
user_pref("extensions.pocket.enabled", false);

// Disable PDFjs.
user_pref("pdfjs.disabled", true);
user_pref("plugin.disable_full_page_plugin_for_types", "application/pdf");

// Disable recommendations in about:addons.
user_pref("extensions.getAddons.showPane", false);
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);



/*
 * Web APIs.
 */

// When an iframed page causes a permissions prompt to appear, show the origin
// of the third-party rather than the first-party that embeds the iframe.
user_pref("permissions.delegation.enabled", false);

// Block requests for access to desktop features.
// NOTE: Keep default "Always Ask"; disabling can be used for fingerprinting.
// user_pref("permissions.default.camera", 2);
// user_pref("permissions.default.desktop-notifications", 2);
// user_pref("permissions.default.geo", 2);
// user_pref("permissions.default.microphone", 2);

// Disable WebGL.
user_pref("webgl.disabled", true);
user_pref("webgl.enable-webgl2", false);

// Disable sendBeacon support.
// https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon
user_pref("beacon.enabled", false);

// Disable `ping` attribute of certain HTML tags (e.g. <a>).
user_pref("browser.send_pings", false);
user_pref("browser.send_pings.require_same_host", true);

// Disable WASM support.
user_pref("javascript.options.wasm", false);



/*
 * Network behavior.
 */

// Enable DoH via Quad9.
// 0=off by default, 1=race (removed in FF69), 2=TRR first, 3=TRR only,
// 4=race for stats (removed in FF69), 5=explicitly off
user_pref("network.trr.mode", 2);
user_pref("network.trr.uri", "https://dns.quad9.net/dns-query");
//user_pref("network.trr.bootstrapAddress", "");


// Disable explicit <link> prefetching.
// https://developer.mozilla.org/docs/Web/HTTP/Link_prefetching_FAQ
user_pref("network.prefetch-next", false);

// Disable DNS prefetching.
user_pref("network.dns.disablePrefetch", true);

// Disable speculative prefetching.
user_pref("network.predictor.enabled", false);
user_pref("network.predictor.enable-prefetch", false);
user_pref("network.http.speculative-parallel-limit", 0);

// Send DNT even though it won't really matter.
user_pref("privacy.donottrackheader.enabled", true);



/*
 * Internal workings.
 */

// Disable Health Reports.
user_pref("datareporting.healthreport.uploadEnabled", false);

// Disable Shield Studies.
user_pref("app.shield.optoutstudies.enabled", false);

// Normandy is similar to the Shield Study system, but it is specifically
// designed to test experimental preferences.
user_pref("app.normandy.enabled", false);

// Disable telemetry.
// https://firefox-source-docs.mozilla.org/toolkit/components/telemetry/telemetry/internals/preferences.html
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false);

// Disable Telemetry Coverage (analytics about other telemetry settings).
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.opt-out", true);

// Disable session restore.
user_pref("browser.sessionstore.privacy_level", 2);
user_pref("browser.sessionstore.resume_from_crash", false);

// This setting controls how often Firefox writes data to the disk as part of
// the session restore feature.  The default setting is 15000ms, which leads
// to a fair amount of disk activity.  Since we don't really care about this
// feature, we can vastly increase the interval in order to reduce unnecessary
// disk activity.  It's not clear whether this has any effect if session
// restore is disabled, as it is above.
user_pref("browser.sessionstore.interval", 150000);
