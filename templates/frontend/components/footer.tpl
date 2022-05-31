{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *}
<footer class="site-footer">
	<div class="container site-footer-sidebar" role="complementary"
	     aria-label="{translate|escape key="common.navigation.sidebar"}">
		<div class="row">
			{call_hook name="Templates::Common::Sidebar"}
		</div>
	</div>
	<div class="container site-footer-content">
		<div class="row">
			{if $pageFooter}
				<div class="col-md site-footer-content align-self-center">
					{$pageFooter}
				</div>
			{/if}
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-3 align-self-center text-left" role="complementary">
				<a href="{url page="about" op="aboutThisPublishingSystem"}">
					<img class="footer-brand-image" alt="{translate key="about.aboutThisPublishingSystem"}"
					     src="{$baseUrl}/{$brandImage}">
				</a>
			</div>

			{* Impresión de ISSN *}
			{if $currentJournal && $currentJournal->getSetting('onlineIssn')}
				{assign var=eissn value=$currentJournal->getSetting('onlineIssn')}
			{elseif $currentJournal && $currentJournal->getSetting('printIssn')}
				{assign var=pissn value=$currentJournal->getSetting('printIssn')}
			{/if}

			{if $eissn}
			<div class="col-md-3 align-self-center" role="complementary">
				<a>eISSN: {$eissn}</a>
			</div>
			{/if}

			{if $pissn}
			<div class="col-md-3 align-self-center" role="complementary">
				<a>ISSN: {$pissn}</a>
			</div>
			{/if}

			{* Creative Commons Logo*}
			<div class="col-md-3 align-self-center text-right" role="complementary">
				<img src="https://licensebuttons.net/l/by-nc-nd/3.0/88x31.png" />
			</div>
		
		</div>
	</div>
</footer><!-- pkp_structure_footer_wrapper -->

{* Load author biography modals if they exist *}
{if !empty($smarty.capture.authorBiographyModals|trim)}
	{$smarty.capture.authorBiographyModals}
{/if}

{* Login modal *}
<div id="loginModal" class="modal fade" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				{include file="frontend/components/loginForm.tpl" formType = "loginModal"}
			</div>
		</div>
	</div>
</div>

{load_script context="frontend" scripts=$scripts}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
