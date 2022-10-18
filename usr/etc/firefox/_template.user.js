////////////////////////////////////////////////////////////////////////
//                                                                    //
//  Firefox user.js template of globally applicable settings.         //
//                                                                    //
//  Updated: 2022-10-18 (arkenfox/user.js @ f4187632)                 //
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

// Disable contextual feature recommendations.
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);

// Disable all known content categories for the new tab page, just in case.
user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
user_pref("browser.newtabpage.activity-stream.showSearch", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);

// Clear topsites list.
user_pref("browser.newtabpage.activity-stream.default.sites", "");

// Enable Container Tabs.
user_pref("privacy.userContext.enabled", true);
user_pref("privacy.userContext.ui.enabled", true);

// Don't store any form or login data for auto-fill.
user_pref("browser.formfill.enable", false);
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.creditCards.enabled", false); // [FF56+]
user_pref("extensions.formautofill.heuristics.enabled", false); // [FF55+]
user_pref("signon.autofillForms", false);
user_pref("signon.generation.enabled", false);
user_pref("signon.rememberSignons", false);

// Always prompt to download or open a file of an unknown type.
user_pref("browser.download.always_ask_before_handling_new_types", true);

// Warn when closing a window with more than one tab.
user_pref("browser.tabs.warnOnClose", true);
user_pref("browser.warnOnQuitShortcut", false);

// Don't quit the application when closing the last tab.
user_pref("browser.tabs.closeWindowWithLastTab", false);

// Don't warn about accessing about:config.
user_pref("general.warnOnAboutConfig", false);
user_pref("browser.aboutConfig.showWarning", false);

// Don't display Unicode characters in URLs.
user_pref("network.IDN_show_punycode", true);

// Always show the full URL.
user_pref("browser.urlbar.trimURLs", false);

// Set default search engine and hide all others.
user_pref("browser.urlbar.placeholderName", "DuckDuckGo");
user_pref("browser.search.hiddenOneOffs", "Google,Amazon.com,Bing,eBay,Wikipedia (en)");

// Disable location bar search engine suggestions.
user_pref("browser.urlbar.suggest.engines", false);

// Disable location bar search suggestions.
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.urlbar.suggest.searches", false);
user_pref("browser.urlbar.showSearchSuggestionsFirst", false);

// Disable location bar contextual suggestions.
user_pref("browser.urlbar.suggest.quicksuggest.nonsponsored", false);
user_pref("browser.urlbar.suggest.quicksuggest.sponsored", false);
user_pref("browser.urlbar.suggest.topsites", false);



/*
 * Content Blocking.
 */

// Use "Strict" Enhanced Tracking Protection configuration, which includes
// Total Cookie Protection (aka dynamic First-Party Isolation).
user_pref("browser.contentblocking.category", "strict");

// Enable state partitioning of service workers.
user_pref("privacy.partition.serviceWorkers", true);

// Enable APS (Always Partitioning Storage) ***/
user_pref("privacy.partition.always_partition_third_party_non_cookie_storage", true);
user_pref("privacy.partition.always_partition_third_party_non_cookie_storage.exempt_sessionstorage", false);



/*
 * Extensions.
 */

// Disable Encrypted Media Extensions API.
user_pref("media.eme.enabled", false);

// Disable Pocket.
user_pref("extensions.pocket.enabled", false);

// Disable PDFjs.
user_pref("pdfjs.disabled", true);
user_pref("pdfjs.enableScripting", false);
user_pref("plugin.disable_full_page_plugin_for_types", "application/pdf");

// Disable recommendations in about:addons.
user_pref("extensions.getAddons.showPane", false);
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);

// Disable bypass of 3rd-party extention install prompt.
user_pref("extensions.postDownloadThirdPartyPrompt", false);



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

// Disable WASM support.
user_pref("javascript.options.wasm", false);



/*
 * Network behavior.
 */

// Enable DoH via Quad9.
// 0=off by default, 2=TRR first, 3=TRR only, 5=explicitly off
user_pref("network.trr.mode", 2);
user_pref("network.trr.uri", "https://dns.quad9.net/dns-query");
// Set DNS server to query for IP of DoH resolver (mode 3 only).
//user_pref("network.trr.bootstrapAddress", "");

// Enable HTTPS-only mode.
user_pref("dom.security.https_only_mode", true); // [FF76+]
user_pref("dom.security.https_only_mode_send_http_background_request", false);

// Enable and enforce CRLite.
user_pref("security.remote_settings.crlite_filters.enabled", true);
user_pref("security.pki.crlite_mode", 2);

// Disable explicit <link> prefetching.
// https://developer.mozilla.org/docs/Web/HTTP/Link_prefetching_FAQ
user_pref("network.prefetch-next", false);

// Disable DNS prefetching.
user_pref("network.dns.disablePrefetch", true);

// Disable speculative prefetching.
user_pref("network.predictor.enabled", false);
user_pref("network.http.speculative-parallel-limit", 0);

// Disable speculative connections when navigating bookmarks and history.
user_pref("browser.places.speculativeConnect.enabled", false);

// Send DNT even though it won't really matter.
user_pref("privacy.donottrackheader.enabled", true);



/*
 * Internal workings.
 */

// Disable Health Reports.
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("browser.ping-centre.telemetry", false);

// Disable Shield Studies.
user_pref("app.shield.optoutstudies.enabled", false);

// Normandy is similar to the Shield Study system, but it is specifically
// designed to test experimental preferences.
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");

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
