{**
 * templates/frontend/components/languageSwitcher-logo.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief A re-usable template for displaying a language switcher dropdown.
 *
 * @uses $currentLocale string Locale key for the locale being displayed
 * @uses $languageToggleLocales array All supported locales
 * @uses $id string A unique ID for this language toggle
 *}
{if isset($supportedLocales) && $supportedLocales|@count}
	<div id="userNav dropdown" class="navbar-nav">
		<span class="nav-item dropdown-toggle"  type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="padding-right: 2em;">
			<svg class="svg-inline--fa fa-globe fa-w-16" aria-hidden="true" data-fa-processed="" data-prefix="fa" data-icon="globe" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M364.215 192h131.43c5.439 20.419 8.354 41.868 8.354 64s-2.915 43.581-8.354 64h-131.43c5.154-43.049 4.939-86.746 0-128zM185.214 352c10.678 53.68 33.173 112.514 70.125 151.992.221.001.44.008.661.008s.44-.008.661-.008c37.012-39.543 59.467-98.414 70.125-151.992H185.214zm174.13-192h125.385C452.802 84.024 384.128 27.305 300.95 12.075c30.238 43.12 48.821 96.332 58.394 147.925zm-27.35 32H180.006c-5.339 41.914-5.345 86.037 0 128h151.989c5.339-41.915 5.345-86.037-.001-128zM152.656 352H27.271c31.926 75.976 100.6 132.695 183.778 147.925-30.246-43.136-48.823-96.35-58.393-147.925zm206.688 0c-9.575 51.605-28.163 104.814-58.394 147.925 83.178-15.23 151.852-71.949 183.778-147.925H359.344zm-32.558-192c-10.678-53.68-33.174-112.514-70.125-151.992-.221 0-.44-.008-.661-.008s-.44.008-.661.008C218.327 47.551 195.872 106.422 185.214 160h141.572zM16.355 192C10.915 212.419 8 233.868 8 256s2.915 43.581 8.355 64h131.43c-4.939-41.254-5.154-84.951 0-128H16.355zm136.301-32c9.575-51.602 28.161-104.81 58.394-147.925C127.872 27.305 59.198 84.024 27.271 160h125.385z"></path></svg>
		</span>
		<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
		{foreach from=$supportedLocales item=localeName key=localeKey}
			<a class="nav-item dropdown-item" href="{url router=$smarty.const.ROUTE_PAGE page="user" op="setLocale" path=$localeKey}">
				{$localeName}
			</a>
		{/foreach}
		</div>
	</div>
{/if}