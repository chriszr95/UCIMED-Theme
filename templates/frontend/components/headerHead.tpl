{**
 * templates/frontend/components/headerHead.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2000-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * Common site header <head> tag and contents.
 *}
<head>
	<meta charset="{$defaultCharset|escape}">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>
		{$pageTitleTranslated|strip_tags}
		{* Add the journal name to the end of page titles *}
		{if $requestedPage|escape|default:"index" != 'index' && $currentContext && $currentContext->getLocalizedName()}
			| {$currentContext->getLocalizedName()}
		{/if}
	</title>

	{include file="frontend/components/googleTagManager.tpl"}
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;1,100&display=swap" rel="stylesheet">


	{load_header context="frontend"}
	{load_stylesheet context="frontend"}

	{*include file="frontend/components/googleTagManager.tpl"*}
</head>
